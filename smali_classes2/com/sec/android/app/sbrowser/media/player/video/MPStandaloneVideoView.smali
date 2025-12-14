.class public Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;
.super Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPStandaloneVideoView"


# instance fields
.field private mBuffered:I

.field private mCanPause:Z

.field private mCanSeekBackward:Z

.field private mCanSeekForward:Z

.field private mCurrentPlaybackSpeed:D

.field private mIsAudioOnly:Z

.field private mIsCompletion:Z

.field private mIsPendingPlayRequest:Z

.field private mIsPrepared:Z

.field private mIsTransientPause:Z

.field private mIsViewInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mParentActivityId:Ljava/lang/String;

.field private final mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

.field private mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoContainerView:Landroid/view/View;

.field private mVideoHeight:I

.field private mVideoUri:Landroid/net/Uri;

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPrepared:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanPause:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanSeekForward:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanSeekBackward:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsCompletion:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsAudioOnly:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPendingPlayRequest:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsTransientPause:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mParentActivityId:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoContainerView:Landroid/view/View;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoContainerLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoWidth()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    :cond_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsViewInitialized:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mGradView:Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView$2;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView;->setDelegate(Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->lambda$createMediaPlayer$1(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->lambda$createMediaPlayer$4(Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method private createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaPlayerCreatedListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerCreatedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerCreatedListener;->onMediaPlayerCreatedListener()V

    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Cookie"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "allow-cross-domain-redirect"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/a;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/c;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/e;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/video/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/f;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-object v0
.end method

.method private createMediaPlayer(Landroid/view/Surface;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->hideVideo()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IllegalStateException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->lambda$createMediaPlayer$2(Landroid/media/MediaPlayer;II)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->lambda$createMediaPlayer$5(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->lambda$createMediaPlayer$3(Landroid/media/MediaPlayer;I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->lambda$createMediaPlayer$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mBuffered:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanPause:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanSeekBackward:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanSeekForward:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsCompletion:Z

    return p0
.end method

.method private synthetic lambda$createMediaPlayer$0(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPrepared:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsCompletion:Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    const/16 p1, 0x322

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->onMediaInfoUpdated(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPosition()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDuration()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPosition()I

    move-result v1

    sub-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsCompletion:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDuration()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1, p1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPendingPlayRequest:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPendingPlayRequest:Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->updateCanPlaybackStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;->start()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mClosedCaptionHelper:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->setPlayerControl(Landroid/widget/MediaController$MediaPlayerControl;)V

    :cond_3
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    invoke-static {v0, p0, p1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createMediaPlayer$1(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object p3, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onInfo : "

    invoke-static {p2, v0, p3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/16 p3, 0x322

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->updateCanPlaybackStatus()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->updateCanPlaybackStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->showVideo()V

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->onMediaInfoUpdated(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createMediaPlayer$2(Landroid/media/MediaPlayer;II)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    const/16 p1, 0x322

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->onMediaInfoUpdated(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mVideoSizeChangedListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;->onVideoSizeChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createMediaPlayer$3(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mBuffered:I

    return-void
.end method

.method private synthetic lambda$createMediaPlayer$4(Landroid/media/MediaPlayer;II)Z
    .locals 2

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    const-string v0, "onError what : "

    const-string v1, ", extra : "

    invoke-static {p2, p3, v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    const/16 p1, 0xc8

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_INVALID_CODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_DECODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    goto :goto_0

    :cond_2
    const/16 p1, -0x3ef

    if-eq p3, p1, :cond_4

    const/16 p1, -0x6e

    if-eq p3, p1, :cond_3

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_FORMAT:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_INVALID_CODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_DECODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->notifyMediaPlayerError(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPrepared:Z

    return p1
.end method

.method private synthetic lambda$createMediaPlayer$5(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    const-string v0, "MediaPlayer onCompletion"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->cancel()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsCompletion:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setKeepScreenOn(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPendingPlayRequest:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->notifyPlaybackCompleted()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mParentActivityId:Ljava/lang/String;

    return-object p0
.end method

.method private notifySurfaceTextureAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->onSurfaceTextureAvailable()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private onMediaInfoUpdated(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    if-eqz v1, :cond_4

    const/16 v1, 0x2bd

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2be

    if-eq p1, v1, :cond_3

    const/16 v1, 0x322

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;->MEDIA_INFO_UNSUPPORTED_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoMediaPlayer;->MEDIA_INFO_NO_VIDEO:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMediaInfoUpdateListener:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;->onMediaInfoUpdated(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;->onMediaInfoUpdated(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsCompletion:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPendingPlayRequest:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPrepared:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static bridge synthetic t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateCanPlaybackStatus()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMetadata"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v3, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "has"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "getBoolean"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "PAUSE_AVAILABLE"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    const-string v7, "SEEK_FORWARD_AVAILABLE"

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const-string v8, "SEEK_BACKWARD_AVAILABLE"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v8

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_6

    :catch_2
    move-exception p0

    goto/16 :goto_7

    :catch_3
    move-exception p0

    goto/16 :goto_8

    :cond_2
    :goto_0
    move v5, v1

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanPause:Z

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v1

    :goto_3
    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanSeekForward:Z

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v8

    :cond_6
    :goto_4
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCanSeekBackward:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_5
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find matching fields in Metadata class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_6
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot access metadata: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_7
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke MediaPlayer.getMetadata() method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_8
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find getMetadata() method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_9
    return-void
.end method


# virtual methods
.method public changeVideoRatio(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->changeVideoRatio(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoContainerView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;->destroy()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public exitFullscreen()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->destroy()V

    return-void
.end method

.method public getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->isErrorOccurred()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setCurrentPosition(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setDuration(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setVideoHeight(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setVideoWidth(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->setIsPlaying(Z)V

    :cond_0
    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsViewInitialized:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsViewInitialized:Z

    return-wide v1

    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/Float;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCurrentPlaybackSpeed:D
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCurrentPlaybackSpeed:D

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_3

    move-wide v1, v3

    :cond_3
    return-wide v1
.end method

.method public getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object p0
.end method

.method public getVideoCapture(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoHeight()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getThumbnail(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoContainerView:Landroid/view/View;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    return-object p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoHeight:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x168

    :goto_0
    return p0
.end method

.method public getVideoSourceUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mVideoWidth:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x280

    :goto_0
    return p0
.end method

.method public isAudioOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsAudioOnly:Z

    return p0
.end method

.method public isPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPrepared:Z

    return p0
.end method

.method public isRTSP()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoSourceUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoSourceUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "rtsp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsTransientPause:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    const-string v0, "AUDIOFOCUS_GAIN, resumed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setKeepScreenOn(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsTransientPause:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setKeepScreenOn(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsPendingPlayRequest:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mIsTransientPause:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setKeepScreenOn(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public prepareSurfaceChange()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;-><init>(Landroid/widget/MediaController$MediaPlayerControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceChangeHelper:Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPSurfaceChangeHelper;->run()V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsKeepScreenOn:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mIsKeepScreenOn:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mCurrentPlaybackSpeed:D

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {p0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->TAG:Ljava/lang/String;

    const-string v1, "setSurface with SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->createMediaPlayer(Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->notifySurfaceTextureAvailable()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->getVideoContainerViewInterface()Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;->start()V

    :cond_0
    return-void
.end method

.method public updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->setSurface(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
