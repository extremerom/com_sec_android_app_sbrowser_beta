.class final Lorg/chromium/media/mojom/MediaPlayer_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/MediaPlayer_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/MediaPlayer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetExtensionContainerStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetExtensionContainerStatusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-object v1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetExtensionContainerStatusParams;->contId:Ljava/lang/String;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetExtensionContainerStatusParams;->status:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetExtensionContainerStatus(Ljava/lang/String;I)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMediaRemotingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMediaRemotingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayer;->requestMediaRemoting()V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSuspendForFrameClosedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSuspendForFrameClosedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayer;->suspendForFrameClosed()V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetMutedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetMutedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetMutedParams;->muted:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetMuted(Z)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetPlaybackRateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetPlaybackRateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-wide v3, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetPlaybackRateParams;->playbackRate:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetPlaybackRate(D)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestCheckVideoVisibleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestCheckVideoVisibleParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestCheckVideoVisibleParams;->callbackId:I

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestCheckVideoVisible(I)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenFlexModeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenFlexModeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean v1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenFlexModeParams;->enable:Z

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenFlexModeParams;->animation:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetFullscreenFlexMode(ZZ)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenVideoRatioParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenVideoRatioParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetFullscreenVideoRatioParams;->mode:I

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetFullscreenVideoRatio(I)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetIsMediaControlDisplayedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetIsMediaControlDisplayedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetIsMediaControlDisplayedParams;->isDisplayed:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetIsMediaControlDisplayed(Z)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetClosedCaptionVisibilityParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetClosedCaptionVisibilityParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSetClosedCaptionVisibilityParams;->isVisible:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSetClosedCaptionVisibility(Z)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestFullscreenParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayer;->requestFullscreen()V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetAudioSinkIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetAudioSinkIdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetAudioSinkIdParams;->sinkId:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->setAudioSinkId(Ljava/lang/String;)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPowerExperimentStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPowerExperimentStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPowerExperimentStateParams;->enabled:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->setPowerExperimentState(Z)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPersistentStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPersistentStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetPersistentStateParams;->persistent:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->setPersistentState(Z)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetVolumeMultiplierParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetVolumeMultiplierParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-wide v3, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerSetVolumeMultiplierParams;->multiplier:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/media/mojom/MediaPlayer;->setVolumeMultiplier(D)V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMuteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMuteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestMuteParams;->mute:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestMute(Z)V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestEnterPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestEnterPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayer;->requestEnterPictureInPicture()V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekToParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekToParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekToParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSeekTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekBackwardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekBackwardParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekBackwardParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSeekBackward(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekForwardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekForwardParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestSeekForwardParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestSeekForward(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPauseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPauseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPauseParams;->triggeredByUser:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayer;->requestPause(Z)V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPlayParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestPlayParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayer;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayer;->requestPlay()V

    return v2

    :pswitch_17
    sget-object p0, Lorg/chromium/media/mojom/MediaPlayer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    const/16 v4, 0x11

    if-eq v2, v4, :cond_3

    const/16 v4, 0x16

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media/mojom/MediaPlayer;

    new-instance v2, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestVisibilityResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media/mojom/MediaPlayer;->requestVisibility(Lorg/chromium/media/mojom/MediaPlayer$RequestVisibility_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/MediaPlayer;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureParams;->maxSize:Lorg/chromium/gfx/mojom/Size;

    new-instance v4, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/media/mojom/MediaPlayer_Internal$MediaPlayerRequestGetVideoCaptureResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/media/mojom/MediaPlayer;->requestGetVideoCapture(Lorg/chromium/gfx/mojom/Size;Lorg/chromium/media/mojom/MediaPlayer$RequestGetVideoCapture_Response;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media/mojom/MediaPlayer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
