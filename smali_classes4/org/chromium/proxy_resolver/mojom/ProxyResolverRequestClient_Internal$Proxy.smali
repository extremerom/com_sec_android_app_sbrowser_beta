.class final Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;
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
.method public alert(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;->error:Ljava/lang/String;

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

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;-><init>()V

    iput p1, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;->lineNumber:I

    iput-object p2, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;->error:Ljava/lang/String;

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

.method public reportResult(ILorg/chromium/proxy_resolver/mojom/ProxyInfo;)V
    .locals 2

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;->error:I

    iput-object p2, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;->proxyInfo:Lorg/chromium/proxy_resolver/mojom/ProxyInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolveDns(Ljava/lang/String;ILorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;)V
    .locals 1

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->host:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->operation:I

    iput-object p3, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iput-object p4, v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->client:Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;

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
