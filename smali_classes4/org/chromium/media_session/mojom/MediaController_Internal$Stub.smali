.class final Lorg/chromium/media_session/mojom/MediaController_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/MediaController_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media_session/mojom/MediaController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media_session/mojom/MediaController;)V
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

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSkipAdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSkipAdParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->skipAd()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerEnterAutoPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerEnterAutoPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->enterAutoPictureInPicture()V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerRequestMediaRemotingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerRequestMediaRemotingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->requestMediaRemoting()V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetMuteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetMuteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget-boolean p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetMuteParams;->mute:Z

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaController;->setMute(Z)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerRaiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerRaiseParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->raise()V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerHangUpParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerHangUpParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->hangUp()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleCameraParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleCameraParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->toggleCamera()V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleMicrophoneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleMicrophoneParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->toggleMicrophone()V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetAudioSinkIdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetAudioSinkIdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSetAudioSinkIdParams;->id:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaController;->setAudioSinkId(Ljava/lang/String;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerExitPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerExitPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->exitPictureInPicture()V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerEnterPictureInPictureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerEnterPictureInPictureParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->enterPictureInPicture()V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerScrubToParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerScrubToParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerScrubToParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaController;->scrubTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekToParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekToParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekToParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaController;->seekTo(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget v1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;->type:I

    iget v3, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;->minimumSizePx:I

    iget v4, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;->desiredSizePx:I

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerObserveImagesParams;->observer:Lorg/chromium/media_session/mojom/MediaControllerImageObserver;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/media_session/mojom/MediaController;->observeImages(IIILorg/chromium/media_session/mojom/MediaControllerImageObserver;)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSeekParams;->seekTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaController;->seek(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerNextTrackParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerNextTrackParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->nextTrack()V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerPreviousTrackParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerPreviousTrackParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->previousTrack()V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerAddObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerAddObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    iget-object p1, p1, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerAddObserverParams;->observer:Lorg/chromium/media_session/mojom/MediaControllerObserver;

    invoke-interface {p0, p1}, Lorg/chromium/media_session/mojom/MediaController;->addObserver(Lorg/chromium/media_session/mojom/MediaControllerObserver;)V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleSuspendResumeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerToggleSuspendResumeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->toggleSuspendResume()V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerStopParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerStopParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->stop()V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerResumeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerResumeParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->resume()V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSuspendParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaController_Internal$MediaControllerSuspendParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media_session/mojom/MediaController;

    invoke-interface {p0}, Lorg/chromium/media_session/mojom/MediaController;->suspend()V

    return v2

    :pswitch_17
    sget-object p0, Lorg/chromium/media_session/mojom/MediaController_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media_session/mojom/MediaController_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
