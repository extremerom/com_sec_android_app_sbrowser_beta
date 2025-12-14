.class Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public canPause(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MjxiIwJv(J)Z

    move-result p0

    return p0
.end method

.method public canSeekBackward(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MHa8IBiy(J)Z

    move-result p0

    return p0
.end method

.method public canSeekForward(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mw56rkMm(J)Z

    move-result p0

    return p0
.end method

.method public checkVideoVisible(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MRHlROYw(JI)V

    return-void
.end method

.method public getClosedCaptionStatus(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MPRQw2Pp(J)I

    move-result p0

    return p0
.end method

.method public getClosedCaptionUrl(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MA17_jyL(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCookies(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MXj26hZ9(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentPosition(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MQKoPo8T(J)I

    move-result p0

    return p0
.end method

.method public getDimension(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MDlXtm6N(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDuration(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$2uASo5(J)I

    move-result p0

    return p0
.end method

.method public getExtensionContainerStatus(JLjava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MVKtZ$42(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getFrameUrl(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MpvJoOPX(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPlaybackRate(J)D
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MD83nGLk(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getVideoCapture(JIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MaS3Y1dL(JIII)V

    return-void
.end method

.method public getVideoHeight(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MCzxRwio(J)I

    move-result p0

    return p0
.end method

.method public getVideoUrl(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MYoT$baL(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoWidth(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MNVlsvmz(J)I

    move-result p0

    return p0
.end method

.method public isMuted(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->McmrAVz5(J)Z

    move-result p0

    return p0
.end method

.method public isPlaying(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MjsSvnKS(J)Z

    move-result p0

    return p0
.end method

.method public isPrepared(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mvk7IAUu(J)Z

    move-result p0

    return p0
.end method

.method public pause(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$MKh2uW(J)V

    return-void
.end method

.method public play(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MwYe59Fh(J)V

    return-void
.end method

.method public requestFullscreen(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MGoS$Wxu(J)V

    return-void
.end method

.method public seekTo(JD)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MNLcdp3R(JD)V

    return-void
.end method

.method public setClosedCaptionVisibility(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MNhY8YU7(JZ)V

    return-void
.end method

.method public setExtensionContainerStatus(JLjava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MIYmBI9y(JLjava/lang/Object;I)V

    return-void
.end method

.method public setFullscreenFlexMode(JZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mij7oe9M(JZZ)V

    return-void
.end method

.method public setFullscreenVideoRatio(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M3lXyhhD(JI)V

    return-void
.end method

.method public setMuted(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M$4XK09o(JZ)V

    return-void
.end method

.method public setPlaybackRate(JD)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MAAl_KpK(JD)V

    return-void
.end method
