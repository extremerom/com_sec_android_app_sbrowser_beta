.class public interface abstract Lorg/chromium/media/mojom/AudioDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioDecoder$Reset_Response;,
        Lorg/chromium/media/mojom/AudioDecoder$Decode_Response;,
        Lorg/chromium/media/mojom/AudioDecoder$Initialize_Response;,
        Lorg/chromium/media/mojom/AudioDecoder$GetSupportedConfigs_Response;,
        Lorg/chromium/media/mojom/AudioDecoder$Proxy;
    }
.end annotation


# virtual methods
.method public abstract construct(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/MediaLog;)V
.end method

.method public abstract decode(Lorg/chromium/media/mojom/DecoderBuffer;Lorg/chromium/media/mojom/AudioDecoder$Decode_Response;)V
.end method

.method public abstract getSupportedConfigs(Lorg/chromium/media/mojom/AudioDecoder$GetSupportedConfigs_Response;)V
.end method

.method public abstract initialize(Lorg/chromium/media/mojom/AudioDecoderConfig;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioDecoder$Initialize_Response;)V
.end method

.method public abstract reset(Lorg/chromium/media/mojom/AudioDecoder$Reset_Response;)V
.end method

.method public abstract setDataSource(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;)V
.end method
