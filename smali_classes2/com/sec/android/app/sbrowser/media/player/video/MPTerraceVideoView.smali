.class public Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;
.super Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;,
        Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPTerraceVideoView"


# instance fields
.field private final mExtSubtitleContainer:Landroid/view/View;

.field private final mExtSubtitleDivider:Landroid/view/View;

.field private mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

.field private final mExtSubtitleText1:Landroid/widget/TextView;

.field private final mExtSubtitleText2:Landroid/widget/TextView;

.field private mExtSubtitleTextTrack:Ljava/lang/String;

.field private mHideSubTitleView:Z

.field private mIsFlexMode:Z

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSubtitleViewChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mIsFlexMode:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/g;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/g;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mSubtitleViewChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoContainerLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;->setDelegate(Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object p2

    sget-object v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setClosedCaptionVisibility(Z)V

    const/4 p2, 0x1

    invoke-super {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->setClosedCaptionVisibility(Z)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b070d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b070f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0710

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b070e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mSubtitleViewChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mHideSubTitleView:Z

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->lambda$getVideoCapture$2(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->lambda$new$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->notifyVideoSizeChanged()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->onTextTrackUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->updateExtensionSubtitle()V

    return-void
.end method

.method private static synthetic lambda$getVideoCapture$2(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->updateExtensionSubtitlePosition(Landroid/graphics/Rect;I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    sget-object p2, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->TAG:Ljava/lang/String;

    const-string p3, "Subtitle view position updated "

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->updateExtensionSubtitlePosition(Landroid/graphics/Rect;I)V

    return-void
.end method

.method private notifyVideoSizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoSizeChangedListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;->onVideoSizeChanged()V

    :cond_0
    return-void
.end method

.method private onTextTrackUpdated(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleTextTrack:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    const/16 v0, 0x3e7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateExtensionSubtitle()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleTextTrack:Ljava/lang/String;

    invoke-static {v0}, Ll5/a;->c(Ljava/lang/String;)LQd/j;

    move-result-object v0

    const-string v1, "#six-lc-seg-00"

    invoke-virtual {v0, v1}, LQd/n;->J(Ljava/lang/String;)LRd/d;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateExtensionSubtitle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mHideSubTitleView:Z

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mHideSubTitleView:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateExtensionSubtitle:text1"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQd/n;

    invoke-virtual {v6}, LQd/n;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LQd/n;

    invoke-virtual {v6}, LQd/n;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQd/n;

    invoke-virtual {v3}, LQd/n;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleDivider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/n;

    invoke-virtual {v0}, LQd/n;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleText2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    const/16 v0, 0x3e7

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateExtensionSubtitlePosition(Landroid/graphics/Rect;I)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->getVideoRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070961

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070960

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_1
    sget-object p2, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->TAG:Ljava/lang/String;

    const-string v0, "updateExtensionSubtitlePosition: "

    invoke-static {p1, v0, p2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method


# virtual methods
.method public changeVideoRatio(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->changeVideoRatio(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->updateExtensionSubtitlePosition(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setClosedCaptionVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mSubtitleViewChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 0

    return-void
.end method

.method public getClosedCaptionVisibility()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getClosedCaptionVisibility()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$2;->$SwitchMap$com$sec$terrace$content$browser$media$TerraceMediaPlayerManagerClient$ClosedCaptionStatus:[I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPlaybackRate()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0
.end method

.method public getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object p0

    return-object p0
.end method

.method public getVideoCapture(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->getVideoWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->getVideoHeight()I

    move-result p0

    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/video/h;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/media/player/video/h;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoCapture(IILcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;)V

    :cond_0
    return-void
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x168

    :goto_0
    return p0
.end method

.method public getVideoRect(Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->getVideoWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->getVideoHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->shouldUpdateScreenHeight()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v3, p0

    :cond_1
    mul-int p0, v2, v1

    div-int/2addr p0, v0

    const/4 v4, 0x0

    if-le p0, v3, :cond_2

    mul-int/2addr v0, v3

    div-int/2addr v0, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    move p0, v4

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_2
    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    move v5, v3

    move v3, p0

    move p0, v5

    :goto_0
    add-int/2addr v2, v4

    add-int/2addr v3, p0

    invoke-virtual {p1, v4, p0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x280

    :goto_0
    return p0
.end method

.method public hideAndUpdateCaption()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setClosedCaptionVisibility(Z)V

    invoke-super {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->setClosedCaptionVisibility(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->setClosedCaptionVisibility(Z)V

    return-void
.end method

.method public isPrepared()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyVideoPlaybackStateChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->notifyVideoPlaybackStateChanged(Z)V

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleTextTrack:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mExtSubtitleHandler:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$ExtSubtitleHandler;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/16 p1, 0x3e7

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public setClosedCaptionVisibility(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->isAmbientModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->setClosedCaptionVisibility(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setClosedCaptionVisibility(Z)V

    :goto_0
    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setFullscreenFlexMode(ZZ)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mIsFlexMode:Z

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setPlaybackRate(D)V

    :cond_0
    return-void
.end method

.method public shouldUpdateScreenHeight()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mIsFlexMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isShowCutoutCameraTurnedOn(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mTerraceMediaEventListener:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$TerraceMediaEventListener;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V

    :cond_1
    return-void
.end method

.method public updateSubtitleStatus(Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSubtitleVisibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mHideSubTitleView:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->mHideSubTitleView:Z

    return-void
.end method

.method public updateTextSize()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->updateTextSize()V

    return-void
.end method
