.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerContainer$Proxy;
    }
.end annotation


# virtual methods
.method public abstract countFeature(I)V
.end method

.method public abstract postMessageToClient(Lorg/chromium/blink/mojom/ServiceWorkerObjectInfo;Lorg/chromium/blink/mojom/TransferableMessage;)V
.end method

.method public abstract setController(Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;Z)V
.end method
