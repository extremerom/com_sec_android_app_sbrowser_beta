.class interface abstract Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract canPause(J)Z
.end method

.method public abstract canSeekBackward(J)Z
.end method

.method public abstract canSeekForward(J)Z
.end method

.method public abstract checkVideoVisible(JI)V
.end method

.method public abstract getClosedCaptionStatus(J)I
.end method

.method public abstract getClosedCaptionUrl(J)Ljava/lang/String;
.end method

.method public abstract getCookies(J)Ljava/lang/String;
.end method

.method public abstract getCurrentPosition(J)I
.end method

.method public abstract getDimension(J)Ljava/lang/String;
.end method

.method public abstract getDuration(J)I
.end method

.method public abstract getExtensionContainerStatus(JLjava/lang/String;)I
.end method

.method public abstract getFrameUrl(J)Ljava/lang/String;
.end method

.method public abstract getPlaybackRate(J)D
.end method

.method public abstract getVideoCapture(JIII)V
.end method

.method public abstract getVideoHeight(J)I
.end method

.method public abstract getVideoUrl(J)Ljava/lang/String;
.end method

.method public abstract getVideoWidth(J)I
.end method

.method public abstract isMuted(J)Z
.end method

.method public abstract isPlaying(J)Z
.end method

.method public abstract isPrepared(J)Z
.end method

.method public abstract pause(J)V
.end method

.method public abstract play(J)V
.end method

.method public abstract requestFullscreen(J)V
.end method

.method public abstract seekTo(JD)V
.end method

.method public abstract setClosedCaptionVisibility(JZ)V
.end method

.method public abstract setExtensionContainerStatus(JLjava/lang/String;I)V
.end method

.method public abstract setFullscreenFlexMode(JZZ)V
.end method

.method public abstract setFullscreenVideoRatio(JI)V
.end method

.method public abstract setMuted(JZ)V
.end method

.method public abstract setPlaybackRate(JD)V
.end method
