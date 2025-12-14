.class final Lorg/chromium/network/mojom/ResolveHostClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/ResolveHostClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/ResolveHostClient_Internal;
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
.method public onComplete(ILorg/chromium/network/mojom/ResolveErrorInfo;Lorg/chromium/network/mojom/AddressList;[Lorg/chromium/network/mojom/HostResolverEndpointResult;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnCompleteParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnCompleteParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnCompleteParams;->result:I

    iput-object p2, v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnCompleteParams;->resolveErrorInfo:Lorg/chromium/network/mojom/ResolveErrorInfo;

    iput-object p3, v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnCompleteParams;->resolvedAddresses:Lorg/chromium/network/mojom/AddressList;

    iput-object p4, v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnCompleteParams;->endpointResultsWithMetadata:[Lorg/chromium/network/mojom/HostResolverEndpointResult;

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

.method public onHostnameResults([Lorg/chromium/network/mojom/HostPortPair;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnHostnameResultsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnHostnameResultsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnHostnameResultsParams;->hosts:[Lorg/chromium/network/mojom/HostPortPair;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onTextResults([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnTextResultsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnTextResultsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/ResolveHostClient_Internal$ResolveHostClientOnTextResultsParams;->textResults:[Ljava/lang/String;

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
