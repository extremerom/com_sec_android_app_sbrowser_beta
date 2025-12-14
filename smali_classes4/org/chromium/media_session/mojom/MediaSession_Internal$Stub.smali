.class final Lorg/chromium/media_session/mojom/MediaSession_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/MediaSession_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media_session/mojom/MediaSession;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media_session/mojom/MediaSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

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

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionEnterAutoPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionEnterAutoPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->enterAutoPictureInPicture()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionNextSlideParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionNextSlideParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->nextSlide()V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionPreviousSlideParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionPreviousSlideParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->previousSlide()V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionRequestMediaRemotingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionRequestMediaRemotingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->requestMediaRemoting()V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetMuteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetMuteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget-boolean p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetMuteParams;->mute:Z

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->setMute(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionRaiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionRaiseParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->raise()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionHangUpParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionHangUpParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->hangUp()V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionToggleCameraParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionToggleCameraParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->toggleCamera()V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionToggleMicrophoneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionToggleMicrophoneParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->toggleMicrophone()V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetAudioSinkIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetAudioSinkIdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSetAudioSinkIdParams;->id:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->setAudioSinkId(Ljava/lang/String;)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionExitPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionExitPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->exitPictureInPicture()V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionEnterPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionEnterPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->enterPictureInPicture()V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionScrubToParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionScrubToParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionScrubToParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->scrubTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekToParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekToParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekToParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->seekTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSkipAdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSkipAdParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->skipAd()V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopParams;->suspendType:I

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->stop(I)V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSeekParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->seek(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionNextTrackParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionNextTrackParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->nextTrack()V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionPreviousTrackParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionPreviousTrackParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->previousTrack()V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionAddObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionAddObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionAddObserverParams;->observer:Lorg/chromium/media_session/mojom/MediaSessionObserver;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->addObserver(Lorg/chromium/media_session/mojom/MediaSessionObserver;)V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionResumeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionResumeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionResumeParams;->suspendType:I

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->resume(I)V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSuspendParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSuspendParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    iget p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionSuspendParams;->suspendType:I

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaSession;->suspend(I)V

    return v2

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopDuckingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStopDuckingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->stopDucking()V

    return v2

    :pswitch_18
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStartDuckingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionStartDuckingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaSession;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaSession;->startDucking()V

    return v2

    :pswitch_19
    sget-object p0, Lorg/chromium/media_session/mojom/MediaSession_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 9

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

    if-eq v2, v4, :cond_6

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/16 v4, 0xc

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media_session/mojom/MediaSession;

    new-instance v2, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetVisibilityResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media_session/mojom/MediaSession;->getVisibility(Lorg/chromium/media_session/mojom/MediaSession$GetVisibility_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media_session/mojom/MediaSession;

    iget-object v4, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapParams;->image:Lorg/chromium/media_session/mojom/MediaImage;

    iget v5, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapParams;->minimumSizePx:I

    iget p1, p1, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapParams;->desiredSizePx:I

    new-instance v6, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaImageBitmapResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/media_session/mojom/MediaSession;->getMediaImageBitmap(Lorg/chromium/media_session/mojom/MediaImage;IILorg/chromium/media_session/mojom/MediaSession$GetMediaImageBitmap_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media_session/mojom/MediaSession;

    new-instance v2, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetDebugInfoResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media_session/mojom/MediaSession;->getDebugInfo(Lorg/chromium/media_session/mojom/MediaSession$GetDebugInfo_Response;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/media_session/mojom/MediaSession;

    new-instance v2, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/media_session/mojom/MediaSession_Internal$MediaSessionGetMediaSessionInfoResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/media_session/mojom/MediaSession;->getMediaSessionInfo(Lorg/chromium/media_session/mojom/MediaSession$GetMediaSessionInfo_Response;)V

    return v3

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media_session/mojom/MediaSession_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
