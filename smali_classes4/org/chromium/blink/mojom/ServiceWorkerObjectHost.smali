.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerObjectHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerObjectHost$TerminateForTesting_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerObjectHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract postMessageToServiceWorker(Lorg/chromium/blink/mojom/TransferableMessage;)V
.end method

.method public abstract terminateForTesting(Lorg/chromium/blink/mojom/ServiceWorkerObjectHost$TerminateForTesting_Response;)V
.end method
