.class Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/MediaStreamDispatcherHost$OpenDevice_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(ZLjava/lang/String;Lorg/chromium/blink/mojom/MediaStreamDevice;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParams;->success:Z

    iput-object p2, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParams;->label:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParams;->device:Lorg/chromium/blink/mojom/MediaStreamDevice;

    iget-object p1, p0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    iget-wide v1, p0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;->mRequestId:J

    const/4 v3, 0x3

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/MediaStreamDispatcherHost_Internal$MediaStreamDispatcherHostOpenDeviceResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
