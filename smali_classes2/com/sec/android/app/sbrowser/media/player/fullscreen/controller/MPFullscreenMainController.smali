.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenMainController"


# instance fields
.field private mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

.field private final mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

.field private final mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;

.field private mCallback:Landroid/view/Window$Callback;

.field private final mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

.field private final mGestureListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

.field private mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

.field private final mHandler:Landroid/os/Handler;

.field private mHasWindowFocus:Z

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private mIsCaptionVisible:Z

.field private mIsGestureSeeking:Z

.field private mIsInPictureInPictureMode:Z

.field private mIsLocked:Z

.field private mIsMainViewInitialized:Z

.field private final mKeyEventListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

.field private final mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

.field private final mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

.field private final mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

.field private final mPlaybackStateHandler:Landroid/os/Handler;

.field private final mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

.field private mPreviousFlexModeEnabled:Z

.field private final mUpdateFlexModeHandler:Landroid/os/Handler;

.field private final mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

.field private final mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;Lcom/sec/android/app/sbrowser/media/common/IMPManager;Landroid/os/Handler;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/media/common/IMPManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsMainViewInitialized:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->UNDEFINED_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlaybackStateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mUpdateFlexModeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/f;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;-><init>(Landroid/widget/MediaController$MediaPlayerControl;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mKeyEventListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHasWindowFocus:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->initializeWindowCallback()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->createHoverListener()V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEventByLockState()V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewFactory;->createMainView(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p0, p3, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->createVideoLiveTextController(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    new-instance p3, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->tryFullscreenFlexMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getClosedCaptionVisibility()I

    move-result p1

    if-ne p1, v4, :cond_1

    move v0, v4

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsCaptionVisible:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->lambda$createHoverListener$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->lambda$tryFullscreenFlexMode$2()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method private createHoverListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHoverListener:Landroid/view/View$OnHoverListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/h;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/h;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updatePlaybackState()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mKeyEventListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/common/IMPManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    return-object p0
.end method

.method private initializeWindowCallback()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mCallback:Landroid/view/Window$Callback;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHasWindowFocus:Z

    return-void
.end method

.method public static bridge synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$createHoverListener$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x7

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_ambient_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateAmbientMode()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateCC()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryFullscreenFlexMode$2()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isNoDisplayFeatures()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateFullscreenFlexMode(ZZ)V

    :cond_0
    return-void
.end method

.method private releaseResources()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsMainViewInitialized:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mKeyEventListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->releaseAllSystemKeyEvent()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mCallback:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;->releaseAppBrightness()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method private shouldUpdateGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isLiveStream()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->SEEK_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isDisplayOutdoorMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->BRIGHTNESS_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-eq p1, p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private tryFullscreenFlexMode(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mUpdateFlexModeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/g;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;I)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isNoDisplayFeatures()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateFullscreenFlexMode(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->tryOrientationChange()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isNoDisplayFeatures()Z

    move-result p1

    xor-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateFullscreenFlexMode(ZZ)V

    return-void
.end method

.method private updateBottomFeatureButtons()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateBottomFeatureButtons()V

    return-void
.end method

.method private updateCC()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsCaptionVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->hideAndUpdateCaption()V

    :cond_0
    return-void
.end method

.method private updateFullscreenFlexMode(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->setFullscreenFlexMode(ZZ)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->updateGradient(Z)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPreviousFlexModeEnabled:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPreviousFlexModeEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->startRecognizeWithDelay()V

    :cond_0
    return-void
.end method

.method private updatePlaybackState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updatePlaybackState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsGestureSeeking:Z

    return-void
.end method


# virtual methods
.method public adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->shouldUpdateGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V

    :cond_1
    return-void
.end method

.method public bringToFrontMainLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->bringToFrontMainLayout()V

    return-void
.end method

.method public canSeekBackward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->canSeekBackward()Z

    move-result p0

    return p0
.end method

.method public canSeekForward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->canSeekForward()Z

    move-result p0

    return p0
.end method

.method public createFeatureItem(ILandroid/view/View;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;
    .locals 0

    invoke-static {p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemFactory;->create(ILandroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "destroyMainController mIsInPictureInPictureMode= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsInPictureInPictureMode:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->stopGradient()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlaybackStateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->clearNavBarTranslucent(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrowserPreferenceObserver:Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mUpdateFlexModeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateFullscreenFlexMode(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->releaseResources()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->destroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->destroy()V

    :cond_0
    return-void
.end method

.method public enableScreenWakeLock(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public exitFullscreenByUser(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->TAG:Ljava/lang/String;

    const-string v1, "Exit fullscreen video by user forceExit : "

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->exitFullscreenByUser(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->enableGestureListener(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->removeFeatureButtonListener()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->removeTimelineEvent()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getBufferPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->getBufferPercentage()I

    move-result p0

    return p0
.end method

.method public getClosedCaptionVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getClosedCaptionVisibility()I

    move-result p0

    return p0
.end method

.method public getCurrentBrightness()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;->getCurrentBrightness()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public getCurrentVolume()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->getCurrentVolume()I

    move-result p0

    return p0
.end method

.method public getDuration()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->getDuration()I

    move-result p0

    return p0
.end method

.method public getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object p0

    return-object p0
.end method

.method public getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHoverListener:Landroid/view/View$OnHoverListener;

    return-object p0
.end method

.method public getMaxBrightnessSetting()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;->getMaxBrightnessSetting()I

    move-result p0

    return p0
.end method

.method public getMaxVolume()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->getMaxVolume()I

    move-result p0

    return p0
.end method

.method public getOverlapPointForAudioShockWarning(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->getOverlapPointForAudioShockWarning(I)I

    move-result p0

    return p0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPlaybackRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public getToastView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->getToastView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getVideoCapture()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoCapture()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getVideoCapture(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoCapture(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getVideoRatioMode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoRect(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getVideoRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public handleKey(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->handleKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public hideGestureView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideGestureView()V

    return-void
.end method

.method public hideMainView(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    return-void
.end method

.method public hideSystemVolumeUI()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->hideSystemVolumeUI()V

    return-void
.end method

.method public isActivityHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->isActivityHidden()Z

    move-result p0

    return p0
.end method

.method public isAudioOnlyMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isAudioOnly()Z

    move-result p0

    return p0
.end method

.method public isContentFlexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->isContentFlexMode()Z

    move-result p0

    return p0
.end method

.method public isDownloadableVideoUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isDownloadableUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureOnlyEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->isGestureOnlyEnabled()Z

    move-result p0

    return p0
.end method

.method public isGestureSeeking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsGestureSeeking:Z

    return p0
.end method

.method public isInGestureMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->UNDEFINED_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIsInPictureInPictureMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsInPictureInPictureMode:Z

    return p0
.end method

.method public isLiveStream()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->isLiveStream()Z

    move-result p0

    return p0
.end method

.method public isLiveTextViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->isLiveTextViewVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsLocked:Z

    return p0
.end method

.method public isMSE()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isMSE()Z

    move-result p0

    return p0
.end method

.method public isMainViewInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsMainViewInitialized:Z

    return p0
.end method

.method public isPlaybackRatePopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaybackRatePopupShowing()Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public isPopupModeReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isErrorOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isPopupModeReady(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProgressBarAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isProgressBarAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowingMainView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isStandalonePlayer()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    return p0
.end method

.method public isSurfaceChanging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isSurfaceChanging()Z

    move-result p0

    return p0
.end method

.method public isTalkbackEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public keyVolumeDown()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->decreaseVolume(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showVolumeView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->decreaseVolume(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    return-void
.end method

.method public keyVolumeUp()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->increaseVolume(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showVolumeView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->increaseVolume(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    return-void
.end method

.method public notifyFinishedTransition()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->releaseResources()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->notifyFinishedTransition()V

    return-void
.end method

.method public notifyMainViewInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsMainViewInitialized:Z

    return-void
.end method

.method public notifyMediaInfoUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyVideoPlaybackCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsInPictureInPictureMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updatePlaybackState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyVideoPlaybackStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->updateGradient(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startVideo()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->enableScreenWakeLock(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsInPictureInPictureMode:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlaybackStateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlaybackStateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/g;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->updateGradient(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->updateTextSize()V

    :cond_0
    return-void
.end method

.method public onDeviceStateChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsInPictureInPictureMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->tryFullscreenFlexMode(Z)V

    return-void
.end method

.method public onErrorPopupShown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onErrorPopupShown()V

    :cond_0
    return-void
.end method

.method public onEventFired(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onEventFired(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onItemClickForExtractText(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->onItemClickForExtractText(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V

    :cond_0
    return-void
.end method

.method public onMediaBufferingEnd()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onMediaBufferingEnd()V

    :cond_0
    return-void
.end method

.method public onMediaBufferingStart()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onMediaBufferingStart()V

    :cond_0
    return-void
.end method

.method public onMediaInfoMetadataUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onMediaInfoMetadataUpdate()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->notifyMediaInfoUpdated()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateFullscreenFlexMode(ZZ)V

    :cond_0
    return-void
.end method

.method public onNextFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onNextFocus()V

    return-void
.end method

.method public onNextSpeedFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onNextSpeedFocus()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->TAG:Ljava/lang/String;

    const-string v1, "onPictureInPictureModeChanged = "

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsInPictureInPictureMode:Z

    const-string v0, "six-lc-fullscreen-00"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->NONE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateSubtitleView(Z)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->stopGradient()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mUpdateFlexModeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateFullscreenFlexMode(ZZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->updateGradient(Z)V

    :goto_0
    return-void
.end method

.method public onPreviousFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onPreviousFocus()V

    return-void
.end method

.method public onPreviousSpeedFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->onPreviousSpeedFocus()V

    return-void
.end method

.method public onRotationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->onRotationChanged()V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070975

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isContentFlexMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isLocked()Z

    move-result p0

    return p0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHasWindowFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mKeyEventListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEventByLockState()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->onTouchEventForLiveText(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return v1
.end method

.method public onTouchEventForOnlyGesture(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    if-ge v2, v3, :cond_0

    move v5, v4

    move v4, v0

    move v0, v5

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-direct {v2, v0, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->VOLUME_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->BRIGHTNESS_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onUpdateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->updateBottomFeatureButtons()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->setPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    return-void
.end method

.method public onVideoViewInit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->onVideoViewInit()V

    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->pause()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->pauseVideo()V

    :cond_0
    return-void
.end method

.method public performTScanClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->performTScanClick()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->seekTo(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->startRecognizeWithDelay()V

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;->setOverridedBrightness(I)V

    return-void
.end method

.method public setClosedCaptionVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsCaptionVisible:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setClosedCaptionVisibility(Z)V

    return-void
.end method

.method public setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V

    return-void
.end method

.method public setFullscreenVideoMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMPManager:Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->setFullscreenVideoMode(Z)V

    return-void
.end method

.method public setGestureMode(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->SEEK_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsGestureSeeking:Z

    :cond_0
    return-void
.end method

.method public setLock(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->TAG:Ljava/lang/String;

    const-string v1, "setLock = "

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsLocked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mKeyEventListener:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->requestSystemKeyEventByLockState()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideAllPopups()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showLockView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->setLock()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideLockView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setMuted(Z)V

    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setPlaybackRate(D)V

    return-void
.end method

.method public setVideoRatioConfiguration(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->TAG:Ljava/lang/String;

    const-string v1, "setVideoRatioConfiguration = "

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->setVideoRatioConfiguration(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->updateGradient(Z)V

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mVolumeController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->setVolume(I)V

    return-void
.end method

.method public shouldAddLiveText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->shouldAddLiveText()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showDoubleTapAnimation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showDoubleTapAnimation(I)V

    return-void
.end method

.method public showGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->shouldUpdateGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    :cond_0
    return-void
.end method

.method public showLockView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showLockView()V

    return-void
.end method

.method public showMainView(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->show(Z)V

    return-void
.end method

.method public showPlaybackSpeedView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->showPlaybackSpeedView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isShowingMainView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->hideMainView(Z)V

    :cond_0
    return-void
.end method

.method public startRecognizeWithDelay()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startRecognizeWithDelay()V

    :cond_0
    return-void
.end method

.method public startTextSelectionByLongClick(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hide(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideAllPopups()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startTextSelectionByLongClick(FF)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mPlayerClient:Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPMediaPlayerClient;->start()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mLiveTextController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startVideo()V

    :cond_0
    return-void
.end method

.method public swapToPopupPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mBrightnessController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenBrightnessController;->releaseAppBrightness()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isStandalonePlayer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->exitFullscreenByUser(Z)V

    :cond_0
    return-void
.end method

.method public toggleLockState()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mIsLocked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->setLock(Z)V

    return-void
.end method

.method public toggleMainView()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isGestureOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->toggleView()V

    return-void
.end method

.method public toggleMoreMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->toggleMoreMenu()V

    return-void
.end method

.method public togglePlayback(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->togglePlaybackWithAnimation(Z)V

    return-void
.end method

.method public toggleRotation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->toggleOrientation(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->setBlocked()V

    return-void
.end method

.method public updateAmbientMode()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->updateGradient(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mAmbientController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenAmbientController;->stopGradient()V

    :goto_0
    return-void
.end method

.method public updateFeatureUpperViews()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateFeatureUpperViews()V

    return-void
.end method

.method public updateLiveTextButton()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateLiveTextButton()V

    :cond_0
    return-void
.end method

.method public updatePlaybackSpeedControl()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updatePlaybackSpeedControl()V

    return-void
.end method

.method public updateVolumeStatus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    return-void
.end method
