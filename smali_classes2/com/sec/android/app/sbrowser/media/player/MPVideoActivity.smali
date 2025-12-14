.class public Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;
.super Lm/n;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;
.implements Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPVideoActivity"


# instance fields
.field private mActivityStateChangeListener:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;

.field private mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

.field private mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

.field private mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

.field private mPictureInPictureForPopupPlayer:Z

.field private mPipPlaybackCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm/n;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$2;-><init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addObservers()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->initLocaleChangedObserver()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    return-object p0
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initLocaleChangedObserver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onDeviceStateChanged()V

    return-void
.end method

.method private removeObservers()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method


# virtual methods
.method public addCallbackForExitFullscreenMode(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPipPlaybackCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public enterPictureInPicture(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPictureInPictureForPopupPlayer:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    if-nez p1, :cond_3

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->attemptPictureInPicture(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;)V

    return-void
.end method

.method public exitPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    return-void
.end method

.method public getCurrentMediaPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getCurrentPos()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPopupPlayerUsage()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPictureInPictureForPopupPlayer:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->registerWindowManagerCallbacks()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SBrowserMainActivityContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manager_was_playing"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setParentActivityId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setIsStandAlone(Z)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v0

    const-string v3, "manager_videoinfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v3, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-direct {v3, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->build()Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerFactory;->createMPManager(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setIsPlaying(Z)V

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->setFullScreen(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->updateSystemUIForEnterFullscreen(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterFullscreenVideo()V

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->startVideo()V

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->addObservers()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;-><init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mActivityStateChangeListener:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;

    invoke-static {v0, p1}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$3;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$3;-><init>(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroidx/activity/A;->b(Landroidx/activity/u;)Landroidx/activity/z;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lm/n;->onDestroy()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->destroyFullscreen()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->removeObservers()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mActivityStateChangeListener:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mActivityStateChangeListener:Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity$FinishActivityOnParentDestroyed;

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->unregisterWindowManagerCallbacks()V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onPictureInPictureModeChanged(Z)V

    invoke-virtual {p0}, Landroidx/activity/p;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/L;

    iget-object p2, p2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    if-nez p1, :cond_2

    sget-object p1, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    if-ne p2, p1, :cond_0

    const p1, 0x7f140d1d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->popup(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sendBroadcastIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    const p1, 0x7f140d20

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->popup(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlaybackStateChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPipPlaybackCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lm/n;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_open_pip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->enterPictureInPicture(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lm/n;->onStop()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->sendBroadcastIfNeeded(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/p;->onUserLeaveHint()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->enterPictureInPicture(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->pauseVideo()V

    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->startVideo()V

    return-void
.end method

.method public removeCallbackForExitFullscreenMode()V
    .locals 0

    return-void
.end method

.method public removeCallbackForPlaybackStateChange()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mPipPlaybackCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->seekTo(J)V

    return-void
.end method

.method public shouldOverrideFullscreenAction()Z
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->TAG:Ljava/lang/String;

    const-string v0, "MPVideoActivity doesn\'t need to configure status bar visibility."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
