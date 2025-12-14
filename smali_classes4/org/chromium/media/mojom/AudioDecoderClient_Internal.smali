.class Lorg/chromium/media/mojom/AudioDecoderClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioDecoderClient_Internal$AudioDecoderClientOnWaitingParams;,
        Lorg/chromium/media/mojom/AudioDecoderClient_Internal$AudioDecoderClientOnBufferDecodedParams;,
        Lorg/chromium/media/mojom/AudioDecoderClient_Internal$Stub;,
        Lorg/chromium/media/mojom/AudioDecoderClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/AudioDecoderClient;",
            "Lorg/chromium/media/mojom/AudioDecoderClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/AudioDecoderClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioDecoderClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/AudioDecoderClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
