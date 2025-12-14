.class final Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;)V
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

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;->status:Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->setCreditCardStatus(Lcom/sec/terrace/services/autofill/mojom/TerraceInfoBarStatus;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendClearCreditCardsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendClearCreditCardsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->clearCreditCards()V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;->guid:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->removeCreditCard(Ljava/lang/String;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;->card:Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->updateCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return v3

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    iget-object p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;->card:Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->addCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return v3

    :cond_7
    sget-object p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    new-instance v2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->getCreditCardStatusTable(Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCardStatusTable_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;

    iget-boolean p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;->shouldSkipLoadVirtualCreditCard:Z

    new-instance v4, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;->getCreditCards(ZLcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

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
