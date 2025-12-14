.class public interface abstract Lorg/chromium/media/mojom/CdmService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CdmService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createCdmFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/FrameInterfaceFactory;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/CdmFactory;",
            ">;",
            "Lorg/chromium/media/mojom/FrameInterfaceFactory;",
            ")V"
        }
    .end annotation
.end method
