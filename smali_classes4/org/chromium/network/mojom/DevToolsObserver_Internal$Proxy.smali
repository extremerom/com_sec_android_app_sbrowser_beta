.class final Lorg/chromium/network/mojom/DevToolsObserver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/DevToolsObserver$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/DevToolsObserver_Internal;
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
.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DevToolsObserver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;->listener:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onCorsError(Ljava/lang/String;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/ClientSecurityState;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CorsErrorStatus;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    iput-object p4, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p5, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->status:Lorg/chromium/network/mojom/CorsErrorStatus;

    iput-boolean p6, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->isWarning:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onCorsPreflightRequest(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/network/mojom/UrlRequestDevToolsInfo;Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->devtoolRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->requestHeaders:Lorg/chromium/network/mojom/HttpRequestHeaders;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->requestInfo:Lorg/chromium/network/mojom/UrlRequestDevToolsInfo;

    iput-object p4, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->initiatorUrl:Lorg/chromium/url/mojom/Url;

    iput-object p5, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->initiatorDevtoolRequestId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onCorsPreflightRequestCompleted(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;->devtoolRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;->status:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onCorsPreflightResponse(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->devtoolRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->head:Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onEarlyHintsResponse(Ljava/lang/String;[Lorg/chromium/network/mojom/HttpRawHeaderPair;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onOrbError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;->devtoolsRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;->url:Lorg/chromium/url/mojom/Url;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x9

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onPrivateNetworkRequest(Ljava/lang/String;Lorg/chromium/url/mojom/Url;ZILorg/chromium/network/mojom/ClientSecurityState;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->url:Lorg/chromium/url/mojom/Url;

    iput-boolean p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->isWarning:Z

    iput p4, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->resourceAddressSpace:I

    iput-object p5, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onRawRequest(Ljava/lang/String;[Lorg/chromium/network/mojom/CookieWithAccessResult;[Lorg/chromium/network/mojom/HttpRawHeaderPair;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/network/mojom/ClientSecurityState;Lorg/chromium/network/mojom/OtherPartitionInfo;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieWithAccessResult;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    iput-object p4, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->timestamp:Lorg/chromium/mojo_base/mojom/TimeTicks;

    iput-object p5, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    iput-object p6, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->otherPartitionInfo:Lorg/chromium/network/mojom/OtherPartitionInfo;

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

.method public onRawResponse(Ljava/lang/String;[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;[Lorg/chromium/network/mojom/HttpRawHeaderPair;Ljava/lang/String;IILorg/chromium/network/mojom/CookiePartitionKey;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    iput-object p4, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->rawResponseHeaders:Ljava/lang/String;

    iput p5, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->resourceAddressSpace:I

    iput p6, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->httpStatusCode:I

    iput-object p7, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

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

.method public onSharedDictionaryError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;I)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iput p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->error:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xe

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onSriMessageSignatureIssue(Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/network/mojom/SriMessageSignatureIssue;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->issues:[Lorg/chromium/network/mojom/SriMessageSignatureIssue;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xf

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onSubresourceWebBundleInnerResponse(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->innerRequestDevtoolsId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->bundleRequestDevtoolsId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onSubresourceWebBundleInnerResponseError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->innerRequestDevtoolsId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->errorMessage:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->bundleRequestDevtoolsId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xd

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onSubresourceWebBundleMetadata(Ljava/lang/String;[Lorg/chromium/url/mojom/Url;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;->urls:[Lorg/chromium/url/mojom/Url;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onSubresourceWebBundleMetadataError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xb

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onTrustTokenOperationDone(Ljava/lang/String;Lorg/chromium/network/mojom/TrustTokenOperationResult;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;->devtoolRequestId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;->result:Lorg/chromium/network/mojom/TrustTokenOperationResult;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
