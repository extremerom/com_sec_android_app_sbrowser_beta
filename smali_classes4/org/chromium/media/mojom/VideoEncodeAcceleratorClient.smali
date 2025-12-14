.class public interface abstract Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bitstreamBufferReady(ILorg/chromium/media/mojom/BitstreamBufferMetadata;)V
.end method

.method public abstract notifyEncoderInfoChange(Lorg/chromium/media/mojom/VideoEncoderInfo;)V
.end method

.method public abstract notifyErrorStatus(Lorg/chromium/media/mojom/EncoderStatus;)V
.end method

.method public abstract requireBitstreamBuffers(ILorg/chromium/gfx/mojom/Size;I)V
.end method
