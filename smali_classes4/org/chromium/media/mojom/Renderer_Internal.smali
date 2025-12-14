.class Lorg/chromium/media/mojom/Renderer_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetLatencyHintParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetCdmResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetCdmResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetCdmResponseParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetCdmParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetVolumeParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererSetPlaybackRateParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererStartPlayingFromParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererFlushResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererFlushResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererFlushResponseParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererFlushParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeResponseParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$RendererInitializeParams;,
        Lorg/chromium/media/mojom/Renderer_Internal$Stub;,
        Lorg/chromium/media/mojom/Renderer_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/Renderer;",
            "Lorg/chromium/media/mojom/Renderer$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/Renderer_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/Renderer_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/Renderer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
