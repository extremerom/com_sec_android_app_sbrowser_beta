.class Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PictureInPictureService$StartSession_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PictureInPictureService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureInPictureServiceStartSessionResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/blink/mojom/PictureInPictureSession;Lorg/chromium/gfx/mojom/Size;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParams;->session:Lorg/chromium/blink/mojom/PictureInPictureSession;

    iput-object p2, v0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParams;->size:Lorg/chromium/gfx/mojom/Size;

    iget-object p1, p0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;->mRequestId:J

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/PictureInPictureService_Internal$PictureInPictureServiceStartSessionResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
