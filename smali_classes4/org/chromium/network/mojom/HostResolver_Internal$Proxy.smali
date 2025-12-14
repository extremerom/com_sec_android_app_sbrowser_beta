.class final Lorg/chromium/network/mojom/HostResolver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/HostResolver$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/HostResolver_Internal;
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
.method public mdnsListen(Lorg/chromium/network/mojom/HostPortPair;ILorg/chromium/network/mojom/MdnsListenClient;Lorg/chromium/network/mojom/HostResolver$MdnsListen_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenParams;->host:Lorg/chromium/network/mojom/HostPortPair;

    iput p2, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenParams;->queryType:I

    iput-object p3, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenParams;->responseClient:Lorg/chromium/network/mojom/MdnsListenClient;

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

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/HostResolver$MdnsListen_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolveHost(Lorg/chromium/network/mojom/HostResolverHost;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ResolveHostParameters;Lorg/chromium/network/mojom/ResolveHostClient;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->host:Lorg/chromium/network/mojom/HostResolverHost;

    iput-object p2, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p3, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->optionalParameters:Lorg/chromium/network/mojom/ResolveHostParameters;

    iput-object p4, v0, Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;->responseClient:Lorg/chromium/network/mojom/ResolveHostClient;

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
