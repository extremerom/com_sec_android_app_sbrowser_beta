.class final Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;
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
.method public addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;->card:Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public clearCreditCards()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendClearCreditCardsParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendClearCreditCardsParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V
    .locals 7

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableParams;-><init>()V

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

    const/4 v6, 0x6

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getCreditCards(ZLcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;-><init>()V

    iput-boolean p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;->shouldSkipLoadVirtualCreditCard:Z

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

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeCreditCard(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;->guid:Ljava/lang/String;

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

.method public setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;->status:Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;->card:Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

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
