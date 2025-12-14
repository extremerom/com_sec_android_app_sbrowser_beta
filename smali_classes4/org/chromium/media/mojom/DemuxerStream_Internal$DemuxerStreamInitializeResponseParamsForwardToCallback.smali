.class Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/DemuxerStream_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemuxerStreamInitializeResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParamsForwardToCallback;->mCallback:Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;

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

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParamsForwardToCallback;->mCallback:Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;

    iget v1, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParams;->type:I

    iget-object v2, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParams;->pipe:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v3, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParams;->audioConfig:Lorg/chromium/media/mojom/AudioDecoderConfig;

    iget-object p1, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamInitializeResponseParams;->videoConfig:Lorg/chromium/media/mojom/VideoDecoderConfig;

    invoke-interface {p0, v1, v2, v3, p1}, Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;->call(ILorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/media/mojom/AudioDecoderConfig;Lorg/chromium/media/mojom/VideoDecoderConfig;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
