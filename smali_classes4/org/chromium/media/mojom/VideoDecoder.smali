.class public interface abstract Lorg/chromium/media/mojom/VideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoDecoder$Reset_Response;,
        Lorg/chromium/media/mojom/VideoDecoder$Decode_Response;,
        Lorg/chromium/media/mojom/VideoDecoder$Initialize_Response;,
        Lorg/chromium/media/mojom/VideoDecoder$GetSupportedConfigs_Response;,
        Lorg/chromium/media/mojom/VideoDecoder$Proxy;
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

    sget-object v0, Lorg/chromium/media/mojom/VideoDecoder_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/VideoDecoder;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract construct(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/MediaLog;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/media/mojom/CommandBufferId;Lorg/chromium/gfx/mojom/ColorSpace;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/media/mojom/MediaLog;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoFrameHandleReleaser;",
            ">;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/media/mojom/CommandBufferId;",
            "Lorg/chromium/gfx/mojom/ColorSpace;",
            ")V"
        }
    .end annotation
.end method

.method public abstract decode(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/VideoDecoder$Decode_Response;)V
.end method

.method public abstract getSupportedConfigs(Lorg/chromium/media/mojom/VideoDecoder$GetSupportedConfigs_Response;)V
.end method

.method public abstract initialize(Lorg/chromium/media/mojom/VideoDecoderConfig;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/VideoDecoder$Initialize_Response;)V
.end method

.method public abstract onOverlayInfoChanged(Lorg/chromium/media/mojom/OverlayInfo;)V
.end method

.method public abstract reset(Lorg/chromium/media/mojom/VideoDecoder$Reset_Response;)V
.end method
