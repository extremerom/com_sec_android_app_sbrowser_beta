.class final Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal;
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
.method public onScriptLoadStartFailed()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartFailedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartFailedParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onScriptLoadStarted(Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;",
            "Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;",
            "Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SubresourceLoaderUpdater;",
            ">;",
            "Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;",
            "Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    iput-object p3, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    iput-object p4, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->subresourceLoaderUpdater:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p5, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    iput-object p6, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->backForwardCacheControllerHost:Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;

    iput-object p7, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p8, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onWorkerHostCreated(Lorg/chromium/blink/mojom/BrowserInterfaceBroker;Lorg/chromium/blink/mojom/DedicatedWorkerHost;Lorg/chromium/url/internal/mojom/Origin;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnWorkerHostCreatedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnWorkerHostCreatedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnWorkerHostCreatedParams;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    iput-object p2, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnWorkerHostCreatedParams;->host:Lorg/chromium/blink/mojom/DedicatedWorkerHost;

    iput-object p3, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnWorkerHostCreatedParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
