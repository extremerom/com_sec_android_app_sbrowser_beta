.class Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyEncoderInfoChangeParams;,
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientNotifyErrorStatusParams;,
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientBitstreamBufferReadyParams;,
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$VideoEncodeAcceleratorClientRequireBitstreamBuffersParams;,
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$Stub;,
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient;",
            "Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
