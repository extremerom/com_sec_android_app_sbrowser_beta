.class Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FrameWidget$GetImageBytes_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FrameWidget_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameWidgetGetImageBytesResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call([BZLorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParams;->imageData:[B

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParams;->isMultiFrameImage:Z

    iput-object p3, v0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParams;->imageExtension:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p4, v0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParams;->imageMime:Lorg/chromium/mojo_base/mojom/String16;

    iget-object p1, p0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    iget-wide v1, p0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;->mRequestId:J

    const/16 p4, 0x18

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
