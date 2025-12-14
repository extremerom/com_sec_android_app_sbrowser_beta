.class Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;IILorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->result:Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;

    iput p2, v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->layerTreeFrameSinkId:I

    iput p3, v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->metadataVersion:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    iput-object p5, v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    iput-object p6, v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    iget-object p1, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x6

    iget-wide p4, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;->mRequestId:J

    const/4 p6, 0x1

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
