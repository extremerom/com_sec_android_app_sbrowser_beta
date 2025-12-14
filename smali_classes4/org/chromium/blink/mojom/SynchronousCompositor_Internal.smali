.class Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetBeginFrameSourcePausedParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorBeginFrameParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetScrollParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorOnCompositorFrameTransitionDirectiveProcessedParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorReclaimResourcesParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetMemoryPolicyParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByResponseParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZoomByParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorZeroSharedMemoryParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorWillSkipDrawParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwResponseParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawSwParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryResponseParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorSetSharedMemoryParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwResponseParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$SynchronousCompositorDemandDrawHwAsyncParams;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$Stub;,
        Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SynchronousCompositor;",
            "Lorg/chromium/blink/mojom/SynchronousCompositor$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SynchronousCompositor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
