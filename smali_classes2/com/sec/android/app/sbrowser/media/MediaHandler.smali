.class public Lcom/sec/android/app/sbrowser/media/MediaHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MediaHandler"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

.field private mBecomeNoisyReceive:Landroid/content/BroadcastReceiver;

.field private mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

.field private final mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

.field private final mDestroyFullscreenHandler:Landroid/os/Handler;

.field private final mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

.field private final mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

.field private final mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

.field private final mGestureDetector:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

.field private mIsContentFlexModeStarted:Z

.field private mIsFullscreenVideoMode:Z

.field private mIsHistoryUpdated:Z

.field private mIsInPictureInPictureMode:Z

.field private mIsTabHidden:Z

.field private mIsVideoAssistantActivated:Z

.field private mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

.field private mPipPlaybackCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTerrace:Lcom/sec/terrace/Terrace;

.field private final mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;

.field private final mUPSMObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mDestroyFullscreenHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsVideoAssistantActivated:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsHistoryUpdated:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/c;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mUPSMObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler$1;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mBecomeNoisyReceive:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidParentActivity(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created MediaHandler of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler$2;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    invoke-virtual {p2, v0}, Lcom/sec/terrace/Terrace;->setMediaClient(Lcom/sec/terrace/content/browser/media/TerraceMediaClient;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler$3;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    invoke-direct {p2, p1, v0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mGestureDetector:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->addObservers()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/MediaHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$new$2(Z)V

    return-void
.end method

.method private addObservers()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->initBecomeNoisyReceiver()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mUPSMObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/MediaHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$destroyFullscreen$4()V

    return-void
.end method

.method private createMPManager(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setParentActivityId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setIsStandAlone(Z)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler$5;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->setDelegate(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->build()Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerFactory;->createMPManager(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$enterContentsFlexMode$5()V

    return-void
.end method

.method private destroyFullscreen(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->isFullscreenVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClient()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isFlexMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mDestroyFullscreenHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/a;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mDestroyFullscreenHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/MediaHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$new$1(Z)V

    return-void
.end method

.method private enterContentsFlexMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "enterContentsFlexMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->checkVideoVisible(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private exitContentsFlexMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->isFullscreenVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "exitContentsFlexMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/media/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/a;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->exit(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startExiting(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/media/MediaHandler;ZLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$enterContentsFlexMode$6(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$enterFullscreenVideo$3(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->tryContentsFlexMode()Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->enterContentsFlexMode()V

    return-void
.end method

.method private initBecomeNoisyReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mBecomeNoisyReceive:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->lambda$exitContentsFlexMode$7()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    return-object p0
.end method

.method private synthetic lambda$destroyFullscreen$4()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitContentsFlexMode(Z)V

    return-void
.end method

.method private synthetic lambda$enterContentsFlexMode$5()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v2}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->createMPManager(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterContentsFlexMode()V

    return-void
.end method

.method private synthetic lambda$enterContentsFlexMode$6(ZLandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isVAGestureButtonEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->resetGestureEnabled()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/media/a;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->startEntering(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    return-void
.end method

.method private synthetic lambda$enterFullscreenVideo$3(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v2, "[MM] Not enough conditions for creating MPManager."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setWebContainerViewAccessibilityEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->createMPManager(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterFullscreenVideo()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v2}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$exitContentsFlexMode$7()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitContentsFlexMode()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->resetGestureEnabled()V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v0, "Easy Mode changed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "Emergency Mode changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitFullscreenVideo()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "Ultra power saving Mode changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitFullscreenVideo()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mPipPlaybackCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/media/MediaHandler;)Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    return-void
.end method

.method private removeObservers()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mBecomeNoisyReceive:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mBecomeNoisyReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mBecomeNoisyReceive:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mEmergencyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mUPSMObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;)V

    return-void
.end method

.method private resetGestureEnabled()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isVAGestureButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->resetGestureEnabled()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    return-void
.end method

.method private setVAVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v2}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v3}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->shouldShowVA()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->isMuted()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    :cond_4
    :goto_0
    return-void
.end method

.method private setWebContainerViewAccessibilityEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWebContainerViewAccessibilityEnabled  = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ContentView = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldShowVA()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidParentActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidStateForVideoAssistant(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsVideoAssistantActivated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsTabHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showVideoAssistant()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->shouldShowVA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->show()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    return-void
.end method

.method private tryContentsFlexMode()Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "tryContentsFlexMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHalfOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isHorizontalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/a;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mFlexModeOrientation:Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->tryOrientationChange()V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->createMPManager(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->destroyFullscreen(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setWebContainerViewAccessibilityEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->showVideoAssistant()V

    return-void
.end method

.method public static bridge synthetic y()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mPipPlaybackCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public enterFullscreenVideo(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsTabHidden:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enterFullscreenVideo : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mDestroyFullscreenHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->enterFullscreenVideo()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mDestroyFullscreenHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v2, "exitFullscreenVideo"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->restoreOrientation(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitContentsFlexMode(Z)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setWebContainerViewAccessibilityEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenVideo()V

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->resetGestureEnabled()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->showVideoAssistant()V

    return-void
.end method

.method public getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    new-instance v3, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler$4;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    :cond_1
    return-wide v0
.end method

.method public handleOnBackPressInVideoFullscreen()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->handleOnBackPressInVideoFullscreen()V

    :cond_0
    return-void
.end method

.method public hideVideoAssistant()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->hide()V

    :cond_0
    return-void
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    return p0
.end method

.method public onDeviceStateChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onDeviceStateChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->tryContentsFlexMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->isNoDisplayFeatures()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitContentsFlexMode(Z)V

    :cond_3
    return-void
.end method

.method public onEventFired(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEventFired:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": onEventFired:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->appendLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onEventFired(Ljava/lang/String;)V

    :cond_1
    const-string p1, "volumechange"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setVAVisibility()V

    goto :goto_0

    :cond_2
    const-string p1, "samsung-video-layout-resized"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->onResized()V

    goto :goto_0

    :cond_3
    const-string p1, "samsung-video-fullscreen-hidden"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsContentFlexModeStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitContentsFlexMode(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->showVideoAssistant()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onMultiWindowModeChanged(Z)V

    :cond_2
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsInPictureInPictureMode:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitContentsFlexMode(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onPictureInPictureModeChanged(Z)V

    :cond_1
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->showVideoAssistant()V

    return-void
.end method

.method public onTabClosed()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "onTabClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->isFullscreenVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitFullscreenVideo()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsTabHidden:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mAssistantManager:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->removeObservers()V

    return-void
.end method

.method public onTabHidden()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "onTabHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsTabHidden:Z

    return-void
.end method

.method public onTabShown()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "onTabShown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsTabHidden:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->showVideoAssistant()V

    return-void
.end method

.method public onToggleFullscreenModeForTab(ZZ)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mContentPlayerFlexMode:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->setFullscreenNavBarVisible(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/media/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/media/a;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->exitFullscreenVideo()V

    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isVideoAssistantEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isVAGestureButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getAssistantManager()Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->isGestureOnlyEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mMPManager:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onTouchEventForOnlyGesture(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsFullscreenVideoMode:Z

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mGestureDetector:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public onVideoAssistantEnabledChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setVAVisibility()V

    return-void
.end method

.method public onVideoStart(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoStart : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/MediaHandler$TerraceMediaEventListener;

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->shouldUpdateHistory(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsHistoryUpdated:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsHistoryUpdated:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->requestUpdateHistory(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Landroid/app/Activity;Lcom/sec/terrace/Terrace;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsHistoryUpdated:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->isFullscreenVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->exitFullscreen()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-eq v0, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->setVAVisibility()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->isFullscreenVideoMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsInPictureInPictureMode:Z

    if-nez p1, :cond_5

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/media/a;-><init>(Lcom/sec/android/app/sbrowser/media/MediaHandler;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->getInstance()Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->update(Landroid/app/Activity;)V

    :cond_6
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    :cond_1
    return-void
.end method

.method public removeCallbackForPlaybackStateChange()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mPipPlaybackCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    if-eqz p0, :cond_1

    long-to-int p1, p1

    invoke-interface {p0, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->TAG:Ljava/lang/String;

    const-string v1, "setVideoAssistantActivated:"

    invoke-static {v1, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;->mIsVideoAssistantActivated:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->hideVideoAssistant()V

    :cond_0
    return-void
.end method
