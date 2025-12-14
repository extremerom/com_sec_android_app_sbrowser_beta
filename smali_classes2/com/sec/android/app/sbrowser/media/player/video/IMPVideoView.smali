.class public interface abstract Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;,
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerCreatedListener;,
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;,
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;,
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;,
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;,
        Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;
    }
.end annotation


# virtual methods
.method public abstract changeVideoRatio(I)V
.end method

.method public abstract destroy()V
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract getClosedCaptionVisibility()I
.end method

.method public abstract getExtensionContainerStatus(Ljava/lang/String;)Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;
.end method

.method public abstract getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
.end method

.method public abstract getPageUrl()Ljava/lang/String;
.end method

.method public abstract getPlaybackRate()D
.end method

.method public abstract getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoCapture()Landroid/graphics/Bitmap;
.end method

.method public abstract getVideoCapture(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoRect(Landroid/graphics/Rect;)V
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hideVideo()V
.end method

.method public abstract isAudioOnly()Z
.end method

.method public abstract isErrorOccurred()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public abstract isShown()Z
.end method

.method public abstract isSurfaceChanging()Z
.end method

.method public abstract prepareSurfaceChange()V
.end method

.method public abstract registerMediaInfoUpdateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;)V
.end method

.method public abstract setAmbientBackground(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setClosedCaptionVisibility(Z)V
.end method

.method public abstract setExtensionContainerStatus(Ljava/lang/String;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ExtensionContainerStatus;)V
.end method

.method public abstract setFullscreenFlexMode(ZZ)V
.end method

.method public abstract setKeepScreenOn(Z)V
.end method

.method public abstract setMuted(Z)V
.end method

.method public abstract setOnErrorListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;)V
.end method

.method public abstract setOnMediaPlayerPlaybackListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaPlayerPlaybackListener;)V
.end method

.method public abstract setOnVideoPlaybackStateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoPlaybackStateListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$VideoSizeChangedListener;)V
.end method

.method public abstract setPlaybackRate(D)V
.end method

.method public abstract showVideo()V
.end method

.method public abstract unregisterMediaInfoUpdateListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$MediaInfoUpdateListener;)V
.end method

.method public abstract updateMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
.end method

.method public abstract updateScaleFactor(D)V
.end method
