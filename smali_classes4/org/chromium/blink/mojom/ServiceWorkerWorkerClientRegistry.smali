.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerWorkerClientRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerWorkerClientRegistry$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cloneWorkerClientRegistry(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ServiceWorkerWorkerClientRegistry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerWorkerClient(Lorg/chromium/blink/mojom/ServiceWorkerWorkerClient;)V
.end method
