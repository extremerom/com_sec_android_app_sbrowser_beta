.class final Lorg/chromium/blink/mojom/PictureInPictureService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PictureInPictureService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PictureInPictureService_Internal;
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
.method public startSession(ILorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/viz/mojom/SurfaceId;Lorg/chromium/gfx/mojom/Size;ZLorg/chromium/blink/mojom/PictureInPictureSessionObserver;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/PictureInPictureService$StartSession_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->playerId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->playerRemote:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->surfaceId:Lorg/chromium/viz/mojom/SurfaceId;

    iput-object p4, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->naturalSize:Lorg/chromium/gfx/mojom/Size;

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->showPlayPauseButton:Z

    iput-object p6, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->observer:Lorg/chromium/blink/mojom/PictureInPictureSessionObserver;

    iput-object p7, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionParams;->sourceBounds:Lorg/chromium/gfx/mojom/Rect;

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

    const-wide/16 p4, 0x0

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsForwardToCallback;

    invoke-direct {p2, p8}, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PictureInPictureService$StartSession_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
