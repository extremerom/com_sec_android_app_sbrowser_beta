.class final Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PictureInPictureSession$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PictureInPictureSession_Internal;
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
.method public stop(Lorg/chromium/blink/mojom/PictureInPictureSession$Stop_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionStopParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionStopParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionStopResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionStopResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PictureInPictureSession$Stop_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public update(ILorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/viz/mojom/SurfaceId;Lorg/chromium/gfx/mojom/Size;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;->playerId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;->playerRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;->surfaceId:Lorg/chromium/viz/mojom/SurfaceId;

    iput-object p4, v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;->naturalSize:Lorg/chromium/gfx/mojom/Size;

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateParams;->showPlayPauseButton:Z

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

.method public updateMediaPosition(Lorg/chromium/media_session/mojom/MediaPosition;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateMediaPositionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateMediaPositionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PictureInPictureSession_Internal$PictureInPictureSessionUpdateMediaPositionParams;->mediaPosition:Lorg/chromium/media_session/mojom/MediaPosition;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
