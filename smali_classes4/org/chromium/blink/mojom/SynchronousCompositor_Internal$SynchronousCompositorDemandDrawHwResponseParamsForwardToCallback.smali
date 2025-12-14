.class Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronousCompositorDemandDrawHwResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;

    move-result-object p1

    iget-object v4, p0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsForwardToCallback;->mCallback:Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;

    iget-object v5, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->result:Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;

    iget v6, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->layerTreeFrameSinkId:I

    iget v7, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->metadataVersion:I

    iget-object v8, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    iget-object v9, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->frame:Lorg/chromium/viz/mojom/CompositorFrame;

    iget-object v10, p1, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;->hitTestRegionList:Lorg/chromium/viz/mojom/HitTestRegionList;

    invoke-interface/range {v4 .. v10}, Lorg/chromium/blink/mojom/SynchronousCompositor$DemandDrawHw_Response;->call(Lorg/chromium/blink/mojom/SyncCompositorCommonRendererParams;IILorg/chromium/viz/mojom/LocalSurfaceId;Lorg/chromium/viz/mojom/CompositorFrame;Lorg/chromium/viz/mojom/HitTestRegionList;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v0
.end method
