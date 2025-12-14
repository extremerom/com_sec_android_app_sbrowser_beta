.class final Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/MediaPlayerObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/MediaPlayerObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/MediaPlayerObserver;)V
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

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtensionContainerUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtensionContainerUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object v1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtensionContainerUpdateParams;->contId:Ljava/lang/String;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtensionContainerUpdateParams;->status:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaExtensionContainerUpdate(Ljava/lang/String;I)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtSubtitleUpdatedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtSubtitleUpdatedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExtSubtitleUpdatedParams;->subtitles:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaExtSubtitleUpdated(Ljava/lang/String;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEventFiredParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEventFiredParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEventFiredParams;->eventName:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaEventFired(Ljava/lang/String;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaCheckVideoVisibleResultParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaCheckVideoVisibleResultParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget v1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaCheckVideoVisibleResultParams;->callbackId:I

    iget-boolean v3, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaCheckVideoVisibleResultParams;->visible:Z

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaCheckVideoVisibleResultParams;->rect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaCheckVideoVisibleResult(IZLorg/chromium/gfx/mojom/Rect;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaUrlUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaUrlUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaUrlUpdateParams;->url:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaUrlUpdate(Ljava/lang/String;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaFullscreenBufferedPercentUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaFullscreenBufferedPercentUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaFullscreenBufferedPercentUpdateParams;->percent:I

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaFullscreenBufferedPercentUpdate(I)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionStatusUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionStatusUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionStatusUpdateParams;->status:I

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaClosedCaptionStatusUpdate(I)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlaybackRateUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlaybackRateUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-wide v3, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlaybackRateUpdateParams;->playbackRate:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaPlaybackRateUpdate(D)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionUrlUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionUrlUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaClosedCaptionUrlUpdateParams;->url:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaClosedCaptionUrlUpdate(Ljava/lang/String;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaLiveStreamVideoUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaLiveStreamVideoUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean v1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaLiveStreamVideoUpdateParams;->seekForward:Z

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaLiveStreamVideoUpdateParams;->seekBackward:Z

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaLiveStreamVideoUpdate(ZZ)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaDurationUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaDurationUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-wide v3, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaDurationUpdateParams;->duration:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaDurationUpdate(D)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaTimeUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaTimeUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-wide v3, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaTimeUpdateParams;->position:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaTimeUpdate(D)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExitFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaExitFullscreenParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaExitFullscreen()V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEnterFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEnterFullscreenParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaEnterFullscreen()V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaErrorParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaError()V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSeekParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSeekParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-wide v3, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSeekParams;->position:D

    invoke-interface {p0, v3, v4}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaSeek(D)V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnVideoVisibilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnVideoVisibilityChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnVideoVisibilityChangedParams;->meetsVisibilityThreshold:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onVideoVisibilityChanged(Z)V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnRemotePlaybackMetadataChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnRemotePlaybackMetadataChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnRemotePlaybackMetadataChangeParams;->remotePlaybackMetadata:Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onRemotePlaybackMetadataChange(Lorg/chromium/media_session/mojom/RemotePlaybackMetadata;)V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangingDisabledParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangingDisabledParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onAudioOutputSinkChangingDisabled()V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnUseAudioServiceChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnUseAudioServiceChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnUseAudioServiceChangedParams;->usesAudioService:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onUseAudioServiceChanged(Z)V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnAudioOutputSinkChangedParams;->hashedDeviceId:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onAudioOutputSinkChanged(Ljava/lang/String;)V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnPictureInPictureAvailabilityChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnPictureInPictureAvailabilityChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnPictureInPictureAvailabilityChangedParams;->available:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onPictureInPictureAvailabilityChanged(Z)V

    return v2

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSizeChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSizeChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaSizeChangedParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaSizeChanged(Lorg/chromium/gfx/mojom/Size;)V

    return v2

    :pswitch_18
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEffectivelyFullscreenChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEffectivelyFullscreenChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaEffectivelyFullscreenChangedParams;->status:I

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaEffectivelyFullscreenChanged(I)V

    return v2

    :pswitch_19
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPositionStateChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPositionStateChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-object p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPositionStateChangedParams;->mediaPosition:Lorg/chromium/media_session/mojom/MediaPosition;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaPositionStateChanged(Lorg/chromium/media_session/mojom/MediaPosition;)V

    return v2

    :pswitch_1a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaMetadataChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaMetadataChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean v1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaMetadataChangedParams;->hasAudio:Z

    iget-boolean v3, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaMetadataChangedParams;->hasVideo:Z

    iget p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaMetadataChangedParams;->contentType:I

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaMetadataChanged(ZZI)V

    return v2

    :pswitch_1b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMutedStatusChangedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMutedStatusChangedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMutedStatusChangedParams;->muted:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMutedStatusChanged(Z)V

    return v2

    :pswitch_1c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPausedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPausedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    iget-boolean p1, p1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPausedParams;->streamEnded:Z

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaPaused(Z)V

    return v2

    :pswitch_1d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlayingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/MediaPlayerObserver_Internal$MediaPlayerObserverOnMediaPlayingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/MediaPlayerObserver;

    invoke-interface {p0}, Lorg/chromium/media/mojom/MediaPlayerObserver;->onMediaPlaying()V

    return v2

    :pswitch_1e
    sget-object p0, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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

    sget-object v1, Lorg/chromium/media/mojom/MediaPlayerObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
