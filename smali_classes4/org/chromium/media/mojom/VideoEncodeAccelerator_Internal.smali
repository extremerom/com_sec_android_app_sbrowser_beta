.class Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushResponseParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorFlushParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedResponseParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorIsFlushSupportedParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithBitrateParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorRequestEncodingParametersChangeWithLayersParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorUseOutputBitstreamBufferParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeResponseParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorEncodeParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeResponseParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$VideoEncodeAcceleratorInitializeParams;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$Stub;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/VideoEncodeAccelerator;",
            "Lorg/chromium/media/mojom/VideoEncodeAccelerator$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/VideoEncodeAccelerator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
