.class Lorg/chromium/media/mojom/AudioDecoder_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderResetResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderResetResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderResetResponseParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderResetParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderDecodeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderDecodeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderDecodeResponseParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderDecodeParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderSetDataSourceParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeResponseParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderInitializeParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderConstructParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderGetSupportedConfigsResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderGetSupportedConfigsResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderGetSupportedConfigsResponseParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$AudioDecoderGetSupportedConfigsParams;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$Stub;,
        Lorg/chromium/media/mojom/AudioDecoder_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/AudioDecoder;",
            "Lorg/chromium/media/mojom/AudioDecoder$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/AudioDecoder_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioDecoder_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/AudioDecoder_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
