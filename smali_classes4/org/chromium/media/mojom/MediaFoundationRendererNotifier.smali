.class public interface abstract Lorg/chromium/media/mojom/MediaFoundationRendererNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaFoundationRendererNotifier$Proxy;
    }
.end annotation


# virtual methods
.method public abstract mediaFoundationRendererCreated(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/MediaFoundationRendererObserver;",
            ">;)V"
        }
    .end annotation
.end method
