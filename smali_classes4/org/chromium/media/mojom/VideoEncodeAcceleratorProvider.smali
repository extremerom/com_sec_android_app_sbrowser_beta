.class public interface abstract Lorg/chromium/media/mojom/VideoEncodeAcceleratorProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorProvider$GetVideoEncodeAcceleratorSupportedProfiles_Response;,
        Lorg/chromium/media/mojom/VideoEncodeAcceleratorProvider$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createVideoEncodeAccelerator(Lorg/chromium/media/mojom/EncodeCommandBufferId;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/media/mojom/EncodeCommandBufferId;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/VideoEncodeAccelerator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideoEncodeAcceleratorSupportedProfiles(Lorg/chromium/media/mojom/VideoEncodeAcceleratorProvider$GetVideoEncodeAcceleratorSupportedProfiles_Response;)V
.end method
