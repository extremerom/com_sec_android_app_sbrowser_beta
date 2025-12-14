.class Lorg/chromium/media/mojom/RendererClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnWaitingParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnStatisticsUpdateParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoOpacityChangeParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoNaturalSizeChangeParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnVideoConfigChangeParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnAudioConfigChangeParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnErrorParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnLiveStreamVideoParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnEndedParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnBufferingStateChangeParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$RendererClientOnTimeUpdateParams;,
        Lorg/chromium/media/mojom/RendererClient_Internal$Stub;,
        Lorg/chromium/media/mojom/RendererClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/RendererClient;",
            "Lorg/chromium/media/mojom/RendererClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/RendererClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/RendererClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/RendererClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
