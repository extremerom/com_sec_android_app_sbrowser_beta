.class public interface abstract Lorg/chromium/gpu/mojom/ClientGmbInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/gpu/mojom/ClientGmbInterface$CopyGpuMemoryBuffer_Response;,
        Lorg/chromium/gpu/mojom/ClientGmbInterface$CreateGpuMemoryBuffer_Response;,
        Lorg/chromium/gpu/mojom/ClientGmbInterface$Proxy;
    }
.end annotation


# virtual methods
.method public abstract copyGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;Lorg/chromium/gpu/mojom/ClientGmbInterface$CopyGpuMemoryBuffer_Response;)V
.end method

.method public abstract createGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferId;Lorg/chromium/gfx/mojom/Size;IILorg/chromium/gpu/mojom/SurfaceHandle;Lorg/chromium/gpu/mojom/ClientGmbInterface$CreateGpuMemoryBuffer_Response;)V
.end method

.method public abstract destroyGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferId;)V
.end method
