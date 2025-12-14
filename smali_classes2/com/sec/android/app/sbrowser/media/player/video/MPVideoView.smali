.class public abstract Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;
.implements Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;


# instance fields
.field final mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

.field protected mContext:Landroid/content/Context;

.field private mErrorListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;

.field mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

.field private mIsErrorOccurred:Z

.field mIsKeepScreenOn:Z

.field private mIsShown:Z

.field mMainLayout:Landroid/widget/RelativeLayout;

.field mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

.field mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

.field mMediaPlayerCreatedListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerCreatedListener;

.field mMediaPlayerPlaybackListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;

.field mVideoContainerLayout:Landroid/widget/FrameLayout;

.field mVideoPlaybackStateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;

.field mVideoSizeChangedListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mErrorListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsKeepScreenOn:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsShown:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsErrorOccurred:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    const p2, 0x7f0e04ca

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0b0006

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0b0740

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoContainerLayout:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b073a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/SubtitleView;

    new-instance v1, Lcom/google/firebase/messaging/z;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;-><init>(Landroid/content/Context;Landroidx/media3/ui/SubtitleView;Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;)Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->lambda$new$0()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-object p0
.end method


# virtual methods
.method public changeVideoRatio(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setVideoRatioMode(I)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->hideVideo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->destroy()V

    return-void
.end method

.method public getClosedCaptionVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->getStatus()I

    move-result p0

    return p0
.end method

.method public getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;->NONE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;

    move-result-object p0

    return-object p0
.end method

.method public getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-object p0
.end method

.method public final getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoCapture()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getVideoWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getVideoHeight()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getThumbnail(Landroid/view/View;II)Landroid/graphics/Bitmap;

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

    return-void
.end method

.method public getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoRatioMode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoRatioMode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getVideoRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public getVideoWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public final hideVideo()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsShown:Z

    :cond_0
    return-void
.end method

.method public isAudioOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isErrorOccurred()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsErrorOccurred:Z

    return p0
.end method

.method public abstract isPrepared()Z
.end method

.method public final isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsShown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSurfaceChanging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyMediaPlayerError(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mErrorListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;->onError(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsErrorOccurred:Z

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public notifyPlaybackCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaPlayerPlaybackListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;->onMediaPlayerPlaybackCompleted()V

    :cond_0
    return-void
.end method

.method public notifyVideoPlaybackStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoPlaybackStateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;->onVideoPlaybackStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public prepareSurfaceChange()V
    .locals 0

    return-void
.end method

.method public final registerMediaInfoUpdateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    return-void
.end method

.method public resetErrorStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsErrorOccurred:Z

    return-void
.end method

.method public setAmbientBackground(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object v1, v2, v0

    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setClosedCaptionVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->setEnabled(Z)V

    return-void
.end method

.method public setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V

    :cond_0
    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 0

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setMuted(Z)V

    return-void
.end method

.method public final setOnErrorListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mErrorListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;

    return-void
.end method

.method public final setOnMediaPlayerPlaybackListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaPlayerPlaybackListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;

    return-void
.end method

.method public final setOnVideoPlaybackStateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoPlaybackStateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoSizeChangedListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;

    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final showVideo()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsShown:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final unregisterMediaInfoUpdateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    :cond_0
    return-void
.end method

.method public updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-void
.end method

.method public final updateScaleFactor(D)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;->onScaleChanged(D)V

    :cond_0
    return-void
.end method
