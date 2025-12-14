.class public interface abstract Lorg/chromium/media/mojom/AudioEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioEncoder$Flush_Response;,
        Lorg/chromium/media/mojom/AudioEncoder$Encode_Response;,
        Lorg/chromium/media/mojom/AudioEncoder$Initialize_Response;,
        Lorg/chromium/media/mojom/AudioEncoder$Proxy;
    }
.end annotation


# virtual methods
.method public abstract encode(Lorg/chromium/media/mojom/AudioBuffer;Lorg/chromium/media/mojom/AudioEncoder$Encode_Response;)V
.end method

.method public abstract flush(Lorg/chromium/media/mojom/AudioEncoder$Flush_Response;)V
.end method

.method public abstract initialize(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioEncoderConfig;Lorg/chromium/media/mojom/AudioEncoder$Initialize_Response;)V
.end method
