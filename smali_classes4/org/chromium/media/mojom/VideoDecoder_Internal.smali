.class Lorg/chromium/media/mojom/VideoDecoder_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderOnOverlayInfoChangedParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetResponseParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderResetParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeResponseParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderDecodeParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeResponseParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderInitializeParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderConstructParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsResponseParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$VideoDecoderGetSupportedConfigsParams;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$Stub;,
        Lorg/chromium/media/mojom/VideoDecoder_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/VideoDecoder;",
            "Lorg/chromium/media/mojom/VideoDecoder$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoDecoder_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoDecoder_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/VideoDecoder_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
