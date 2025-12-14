.class public interface abstract Lorg/chromium/blink/mojom/ServiceWorkerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerHost$AddRoutes_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$ClaimClients_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$SkipWaiting_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$NavigateClient_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$FocusClient_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$OpenPaymentHandlerWindow_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$OpenNewTab_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$GetClient_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$GetClients_Response;,
        Lorg/chromium/blink/mojom/ServiceWorkerHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addRoutes(Lorg/chromium/blink/mojom/ServiceWorkerRouterRules;Lorg/chromium/blink/mojom/ServiceWorkerHost$AddRoutes_Response;)V
.end method

.method public abstract claimClients(Lorg/chromium/blink/mojom/ServiceWorkerHost$ClaimClients_Response;)V
.end method

.method public abstract clearCachedMetadata(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract focusClient(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorkerHost$FocusClient_Response;)V
.end method

.method public abstract getClient(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorkerHost$GetClient_Response;)V
.end method

.method public abstract getClients(Lorg/chromium/blink/mojom/ServiceWorkerClientQueryOptions;Lorg/chromium/blink/mojom/ServiceWorkerHost$GetClients_Response;)V
.end method

.method public abstract navigateClient(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerHost$NavigateClient_Response;)V
.end method

.method public abstract openNewTab(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerHost$OpenNewTab_Response;)V
.end method

.method public abstract openPaymentHandlerWindow(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerHost$OpenPaymentHandlerWindow_Response;)V
.end method

.method public abstract postMessageToClient(Ljava/lang/String;Lorg/chromium/blink/mojom/TransferableMessage;)V
.end method

.method public abstract setCachedMetadata(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;)V
.end method

.method public abstract skipWaiting(Lorg/chromium/blink/mojom/ServiceWorkerHost$SkipWaiting_Response;)V
.end method
