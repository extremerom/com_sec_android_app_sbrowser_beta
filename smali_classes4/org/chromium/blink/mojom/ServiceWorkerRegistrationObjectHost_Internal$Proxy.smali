.class final Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public enableNavigationPreload(ZLorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$EnableNavigationPreload_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadParams;->enable:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostEnableNavigationPreloadResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$EnableNavigationPreload_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getNavigationPreloadState(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$GetNavigationPreloadState_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostGetNavigationPreloadStateResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$GetNavigationPreloadState_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setNavigationPreloadHeader(Ljava/lang/String;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$SetNavigationPreloadHeader_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderParams;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostSetNavigationPreloadHeaderResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$SetNavigationPreloadHeader_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public unregister(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Unregister_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUnregisterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Unregister_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public update(Lorg/chromium/blink/mojom/FetchClientSettingsObject;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Update_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateParams;->outsideFetchClientSettingsObject:Lorg/chromium/blink/mojom/FetchClientSettingsObject;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost_Internal$ServiceWorkerRegistrationObjectHostUpdateResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ServiceWorkerRegistrationObjectHost$Update_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
