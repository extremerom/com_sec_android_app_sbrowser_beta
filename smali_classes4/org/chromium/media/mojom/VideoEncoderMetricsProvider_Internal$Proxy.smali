.class final Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/VideoEncoderMetricsProvider$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public complete(J)V
    .locals 2

    new-instance v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderCompleteParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderCompleteParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderCompleteParams;->encoderId:J

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public initialize(JIILorg/chromium/gfx/mojom/Size;ZI)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;->encoderId:J

    iput p3, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;->encoderUseCase:I

    iput p4, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;->profile:I

    iput-object p5, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;->encodeSize:Lorg/chromium/gfx/mojom/Size;

    iput-boolean p6, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;->isHardwareEncoder:Z

    iput p7, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderInitializeParams;->svcMode:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setEncodedFrameCount(JJ)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetEncodedFrameCountParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetEncodedFrameCountParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetEncodedFrameCountParams;->encoderId:J

    iput-wide p3, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetEncodedFrameCountParams;->numEncodedFrames:J

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setError(JLorg/chromium/media/mojom/EncoderStatus;)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetErrorParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetErrorParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetErrorParams;->encoderId:J

    iput-object p3, v0, Lorg/chromium/media/mojom/VideoEncoderMetricsProvider_Internal$VideoEncoderMetricsProviderSetErrorParams;->status:Lorg/chromium/media/mojom/EncoderStatus;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
