.class final Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;

    iget-object v1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->host:Ljava/lang/String;

    iget v3, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->operation:I

    iget-object v4, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->networkAnonymizationKey:Lorg/chromium/network/mojom/NetworkAnonymizationKey;

    iget-object p1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;->client:Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;->resolveDns(Ljava/lang/String;ILorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;)V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;

    iget v1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;->lineNumber:I

    iget-object p1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;->error:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;->onError(ILjava/lang/String;)V

    return v2

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;

    iget-object p1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;->error:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;->alert(Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;

    iget v1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;->error:I

    iget-object p1, p1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;->proxyInfo:Lorg/chromium/proxy_resolver/mojom/ProxyInfo;

    invoke-interface {p0, v1, p1}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;->reportResult(ILorg/chromium/proxy_resolver/mojom/ProxyInfo;)V

    return v2

    :cond_6
    sget-object p0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
