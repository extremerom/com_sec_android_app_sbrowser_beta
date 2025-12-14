.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$EnsureFileAccess_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistrationForReady_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistrations_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistration_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$Register_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cloneContainerHost(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ensureControllerServiceWorker(Lorg/chromium/mojo/bindings/InterfaceRequest;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ControllerServiceWorker;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract ensureFileAccess([Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$EnsureFileAccess_Response;)V
.end method

.method public abstract getRegistration(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistration_Response;)V
.end method

.method public abstract getRegistrationForReady(Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistrationForReady_Response;)V
.end method

.method public abstract getRegistrations(Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistrations_Response;)V
.end method

.method public abstract hintToUpdateServiceWorker()V
.end method

.method public abstract onExecutionReady()V
.end method

.method public abstract register(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationOptions;Lorg/chromium/blink/mojom/FetchClientSettingsObject;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$Register_Response;)V
.end method
