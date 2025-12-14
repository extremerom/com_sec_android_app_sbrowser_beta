.class final Lorg/chromium/network/mojom/MdnsListenClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/MdnsListenClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/MdnsListenClient_Internal;
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
.method public onAddressResult(IILorg/chromium/network/mojom/IpEndPoint;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnAddressResultParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnAddressResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnAddressResultParams;->updateType:I

    iput p2, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnAddressResultParams;->queryType:I

    iput-object p3, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnAddressResultParams;->endpoint:Lorg/chromium/network/mojom/IpEndPoint;

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

.method public onHostnameResult(IILorg/chromium/network/mojom/HostPortPair;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnHostnameResultParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnHostnameResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnHostnameResultParams;->updateType:I

    iput p2, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnHostnameResultParams;->queryType:I

    iput-object p3, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnHostnameResultParams;->host:Lorg/chromium/network/mojom/HostPortPair;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onTextResult(II[Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnTextResultParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnTextResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnTextResultParams;->updateType:I

    iput p2, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnTextResultParams;->queryType:I

    iput-object p3, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnTextResultParams;->textRecords:[Ljava/lang/String;

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

.method public onUnhandledResult(II)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnUnhandledResultParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnUnhandledResultParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnUnhandledResultParams;->updateType:I

    iput p2, v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal$MdnsListenClientOnUnhandledResultParams;->queryType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
