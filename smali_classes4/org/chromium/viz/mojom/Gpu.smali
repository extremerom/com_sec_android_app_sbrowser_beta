.class public interface abstract Lorg/chromium/viz/mojom/Gpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/Gpu$EstablishGpuChannel_Response;,
        Lorg/chromium/viz/mojom/Gpu$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createVideoEncodeAcceleratorProvider(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoEncodeAcceleratorProvider;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract establishGpuChannel(Lorg/chromium/viz/mojom/Gpu$EstablishGpuChannel_Response;)V
.end method
