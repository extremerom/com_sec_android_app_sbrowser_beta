.class public Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;,
        Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$Callback;,
        Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]PictureInPictureController"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAspectRatio:Landroid/util/Rational;

.field private mDelegate:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

.field private mIsAutoEnterAllowed:Z

.field private mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

.field private final mOnLeavePipCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$Callback<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVisibleAction:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->lambda$addActivityStateChangeListeners$4(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;)V

    return-void
.end method

.method private addActivityStateChangeListeners()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/pip/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addButtonsToShow()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->lambda$attemptPictureInPicture$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->lambda$attemptPictureInPicture$1(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method private canAutoEnter()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createReceiver()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->lambda$attemptPictureInPicture$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private dismissActivity(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v1, "dismissActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->updateAutoPictureInPictureStatus(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->isPipSessionActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->cleanup()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->lambda$attemptPictureInPicture$2()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    return-object p0
.end method

.method private getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->getActionsForPictureInPictureParams(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0, p0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method private getTerrace()Lcom/sec/terrace/Terrace;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->getTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static getVideoBounds(FFLandroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    div-float/2addr p1, p0

    const p0, 0x3ed639d7

    const v0, 0x4018f5c3    # 2.39f

    invoke-static {p1, p0, v0}, LG5/L3;->d(FFF)F

    move-result p0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v0, p1

    int-to-float v1, p2

    div-float v2, v0, v1

    cmpl-float v2, p0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    move v0, p0

    move p0, p1

    goto :goto_0

    :cond_0
    mul-float/2addr v1, p0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    move v0, p2

    :goto_0
    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p0, p1

    add-int/2addr v0, p2

    invoke-direct {v1, p1, p2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->dismissActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private isPipSessionActive()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->setPlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    return-void
.end method

.method private static synthetic lambda$addActivityStateChangeListeners$4(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$DismissActivityOnStop;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method private synthetic lambda$attemptPictureInPicture$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->setPlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    return-void
.end method

.method private static synthetic lambda$attemptPictureInPicture$1(Lcom/sec/terrace/Terrace;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/Terrace;->setHasPersistentVideo(Z)V

    return-void
.end method

.method private synthetic lambda$attemptPictureInPicture$2()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->dismissActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$attemptPictureInPicture$3(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->setPlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    return-void
.end method

.method private preparePictureInPicture(ZFFLandroid/app/Activity;)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->registerReceiver()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->addButtonsToShow()V

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    new-instance v1, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;

    invoke-direct {v1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->addReceiver(I)Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->build()Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;-><init>(Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->setPlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    invoke-static {p2, p3, p4}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getVideoBounds(FFLandroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p3, p2}, Lcom/sec/terrace/content/browser/pip/TerracePipUtils;->clampAndStoreAspectRatio(FF)Landroid/util/Rational;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mAspectRatio:Landroid/util/Rational;

    new-instance p2, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {p2, p3}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {p2, p1}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mVisibleAction:Ljava/util/HashSet;

    invoke-virtual {p3, p0}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->getActionsForPictureInPictureParams(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    sget-object p3, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Error entering PiP with bounds ("

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method private registerReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->createReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.MediaAction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2, v2}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerNonExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setPlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->updatePlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->updatePictureInPictureParams()V

    :cond_0
    return-void
.end method

.method private shouldAttempt()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "VideoPersistence"

    invoke-static {v2}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->hasActiveEffectivelyFullscreenVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isPictureInPictureAllowedForFullscreenVideo()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v0, "Activity does not have PiP feature."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v0, "Activity is already in PiP."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v0, "Activity is being restarted."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v0, "Activity is finishing."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private shouldSkipToEnterPip()Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->isRequestedNotificationPermission()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v0, "shouldSkipToEnterPip requestedNotificationPermission"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shouldSkipToEnterPip topActivity : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResolverActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GrantPermissionsActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private updatePictureInPictureParams()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v1, "Error setting PiP params"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public attemptPictureInPicture(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->shouldAttempt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->addActivityStateChangeListeners()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/pip/c;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;I)V

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isPlaying()Z

    move-result p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->preparePictureInPicture(ZFFLandroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->cleanup()V

    :cond_1
    return-void
.end method

.method public attemptPictureInPicture(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;)V
    .locals 5

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->shouldAttempt()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->shouldSkipToEnterPip()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string p1, "attemptPictureInPicture skip"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getFullscreenVideoSize()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->preparePictureInPicture(ZFFLandroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->cleanup()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/pip/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->addActivityStateChangeListeners()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/pip/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->addCallbackForExitFullscreenMode(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/pip/c;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;I)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;->addCallbackForPlaybackStateChange(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/pip/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/media/player/pip/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/media/player/pip/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->isPipSessionActive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$Callback;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$Callback;->onResult()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mOnLeavePipCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string p1, "terrace is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->hasActiveEffectivelyFullscreenVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/Terrace;->setHasPersistentVideo(Z)V

    sget-object p1, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->setPlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    return-void

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    const-string v0, "Attempted PIP while not in fullscreen"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->cleanup()V

    return-void
.end method

.method public updateAutoPictureInPictureStatus(Landroid/app/Activity;)V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->canAutoEnter()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getFullscreenVideoSize()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->shouldAttempt()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mIsAutoEnterAllowed:Z

    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    new-instance v3, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v3}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    if-eqz v2, :cond_3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->getVideoBounds(FFLandroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v3, v0}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    invoke-static {v3}, LB4/b;->p(Landroid/app/PictureInPictureParams$Builder;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, LB4/b;->D(Landroid/app/PictureInPictureParams$Builder;)V

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->mIsAutoEnterAllowed:Z

    :try_start_0
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error entering PiP with bounds "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
