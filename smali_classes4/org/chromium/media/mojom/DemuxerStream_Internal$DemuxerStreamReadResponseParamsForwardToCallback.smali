.class Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParamsForwardToCallback;
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
    name = "DemuxerStreamReadResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/media/mojom/DemuxerStream$Read_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/media/mojom/DemuxerStream$Read_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParamsForwardToCallback;->mCallback:Lorg/chromium/media/mojom/DemuxerStream$Read_Response;

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

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParamsForwardToCallback;->mCallback:Lorg/chromium/media/mojom/DemuxerStream$Read_Response;

    iget v1, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->status:I

    iget-object v2, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->batchBuffers:[Lorg/chromium/media/mojom/DecoderBuffer;

    iget-object v4, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->audioConfig:Lorg/chromium/media/mojom/AudioDecoderConfig;

    iget-object p1, p1, Lorg/chromium/media/mojom/DemuxerStream_Internal$DemuxerStreamReadResponseParams;->videoConfig:Lorg/chromium/media/mojom/VideoDecoderConfig;

    invoke-interface {p0, v1, v2, v4, p1}, Lorg/chromium/media/mojom/DemuxerStream$Read_Response;->call(I[Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/AudioDecoderConfig;Lorg/chromium/media/mojom/VideoDecoderConfig;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v0
.end method
