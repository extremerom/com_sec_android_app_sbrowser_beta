.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;,
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenViewListMap"


# instance fields
.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

.field private mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

.field private final mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

.field private final mPlaybackSpeedViewMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->DEFAULT:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    sget-object p2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_025:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mViewMap:Ljava/util/EnumMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->SMART_VIEW:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b071b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->TITLE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b073d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->REWIND:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b074d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->PAUSE_PLAY:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b074b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->FORWARD:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b074a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->STRETCH:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b071c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->POPUP:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b0719

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->PLAYSPEED:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b0732

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->ROTATE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b071a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->LOCK:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b0718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->LIVE_TEXT:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    const v1, 0x7f0b0716

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mPlaybackSpeedViewMap:Ljava/util/EnumMap;

    const p0, 0x7f0b0bbb

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_050:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bbc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_075:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bbd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_100:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bba

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_125:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bbe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_150:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bbf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_175:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bc0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_200:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    const p2, 0x7f0b0bc1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private canTakeFocus(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eq p1, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private clearFocus()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getPlaySpeedViewId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mPlaybackSpeedViewMap:Ljava/util/EnumMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getViewId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->PAUSE_PLAY:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0b074b

    goto :goto_0

    :cond_0
    const p0, 0x7f0b074c

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->DEFAULT:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->clearFocus()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mViewMap:Ljava/util/EnumMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getFocusView(Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public handleEnterKey(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->isPlaybackRatePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getPlaySpeedViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onEnterPress(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->DEFAULT:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onEnterPress(Landroid/view/KeyEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->ROTATE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->setFocus(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->resetFocus()V

    :goto_0
    return-void
.end method

.method public onEnterPress(Landroid/view/KeyEvent;Landroid/view/View;)Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mMainView:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    if-eq p2, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->isLongPress(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->performLongClick()Z

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onNextFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->next()Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->canTakeFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onNextFocus()V

    :goto_0
    return-void
.end method

.method public onNextSpeedFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->next()Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getPlaySpeedViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->canTakeFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onNextSpeedFocus()V

    :goto_0
    return-void
.end method

.method public onPreviousFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->previous()Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->canTakeFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onPreviousFocus()V

    :goto_0
    return-void
.end method

.method public onPreviousSpeedFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->previous()Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getPlaySpeedViewId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->canTakeFocus(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->onPreviousSpeedFocus()V

    :goto_0
    return-void
.end method

.method public resetFocus()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;->DEFAULT:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    return-void
.end method

.method public resetSpeedFocus()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;->SPEED_025:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentSpeedFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$PlaySpeedViewList;

    return-void
.end method

.method public setFocus(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mViewMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->getFocusView(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->canTakeFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap;->mCurrentFocus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenViewListMap$ViewList;

    :cond_0
    return-void
.end method
