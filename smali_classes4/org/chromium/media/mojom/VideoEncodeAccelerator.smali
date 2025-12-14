.class public interface abstract Lorg/chromium/media/mojom/VideoEncodeAccelerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoEncodeAccelerator$Flush_Response;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator$IsFlushSupported_Response;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator$Encode_Response;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator$Initialize_Response;,
        Lorg/chromium/media/mojom/VideoEncodeAccelerator$Proxy;
    }
.end annotation


# virtual methods
.method public abstract encode(Lorg/chromium/media/mojom/VideoFrame;Lorg/chromium/media/mojom/VideoEncodeOptions;Lorg/chromium/media/mojom/VideoEncodeAccelerator$Encode_Response;)V
.end method

.method public abstract flush(Lorg/chromium/media/mojom/VideoEncodeAccelerator$Flush_Response;)V
.end method

.method public abstract initialize(Lorg/chromium/media/mojom/VideoEncodeAcceleratorConfig;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/MediaLog;Lorg/chromium/media/mojom/VideoEncodeAccelerator$Initialize_Response;)V
.end method

.method public abstract isFlushSupported(Lorg/chromium/media/mojom/VideoEncodeAccelerator$IsFlushSupported_Response;)V
.end method

.method public abstract requestEncodingParametersChangeWithBitrate(Lorg/chromium/media/mojom/Bitrate;ILorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract requestEncodingParametersChangeWithLayers(Lorg/chromium/media/mojom/VideoBitrateAllocation;ILorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract useOutputBitstreamBuffer(ILorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;)V
.end method
