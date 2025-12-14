.class final Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/ContentDecryptionModuleClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal;
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
.method public onSessionClosed(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionClosedParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionClosedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionClosedParams;->sessionId:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionClosedParams;->reason:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onSessionExpirationUpdate(Ljava/lang/String;D)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionExpirationUpdateParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionExpirationUpdateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionExpirationUpdateParams;->sessionId:Ljava/lang/String;

    iput-wide p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionExpirationUpdateParams;->newExpiryTimeSec:D

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

.method public onSessionKeysChange(Ljava/lang/String;Z[Lorg/chromium/media/mojom/CdmKeyInformation;)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionKeysChangeParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionKeysChangeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionKeysChangeParams;->sessionId:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionKeysChangeParams;->hasAdditionalUsableKey:Z

    iput-object p3, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionKeysChangeParams;->keysInfo:[Lorg/chromium/media/mojom/CdmKeyInformation;

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

.method public onSessionMessage(Ljava/lang/String;I[B)V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionMessageParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionMessageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionMessageParams;->sessionId:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionMessageParams;->messageType:I

    iput-object p3, v0, Lorg/chromium/media/mojom/ContentDecryptionModuleClient_Internal$ContentDecryptionModuleClientOnSessionMessageParams;->message:[B

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
