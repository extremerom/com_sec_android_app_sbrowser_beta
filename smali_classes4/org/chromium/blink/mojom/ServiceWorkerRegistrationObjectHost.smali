.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$SetNavigationPreloadHeader_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$GetNavigationPreloadState_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$EnableNavigationPreload_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Unregister_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Update_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract enableNavigationPreload(ZLorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$EnableNavigationPreload_Response;)V
.end method

.method public abstract getNavigationPreloadState(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$GetNavigationPreloadState_Response;)V
.end method

.method public abstract setNavigationPreloadHeader(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$SetNavigationPreloadHeader_Response;)V
.end method

.method public abstract unregister(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Unregister_Response;)V
.end method

.method public abstract update(Lorg/chromium/blink/mojom/FetchClientSettingsObject;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Update_Response;)V
.end method
