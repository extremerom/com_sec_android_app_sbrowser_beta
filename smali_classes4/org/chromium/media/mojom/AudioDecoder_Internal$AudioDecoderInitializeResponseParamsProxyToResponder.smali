.class Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/AudioDecoder$Initialize_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/AudioDecoder_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioDecoderInitializeResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/media/mojom/DecoderStatus;ZI)V
    .locals 3

    new-instance v0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParams;->success:Lorg/chromium/media/mojom/DecoderStatus;

    iput-boolean p2, v0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParams;->needsBitstreamConversion:Z

    iput p3, v0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParams;->decoderType:I

    iget-object p1, p0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    iget-wide v1, p0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
