.class final Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;)V
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

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCloseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCloseParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->close()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestHasEnrolledInstrumentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestHasEnrolledInstrumentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->hasEnrolledInstrument()V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCanMakePaymentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCanMakePaymentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->canMakePayment()V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestRetryParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestRetryParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestRetryParams;->errors:Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->retry(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCompleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCompleteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget p1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCompleteParams;->result:I

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->complete(I)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestAbortParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestAbortParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->abort()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestDisconnectFromClientWithDebugMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestDisconnectFromClientWithDebugMessageParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget-object v1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestDisconnectFromClientWithDebugMessageParams;->debugMessage:Ljava/lang/String;

    iget p1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestDisconnectFromClientWithDebugMessageParams;->reason:I

    invoke-interface {p0, v1, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestOnPaymentDetailsNotUpdatedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestOnPaymentDetailsNotUpdatedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->onPaymentDetailsNotUpdated()V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestUpdateWithParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestUpdateWithParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestUpdateWithParams;->details:Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->updateWith(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestShowParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestShowParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget-boolean p1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestShowParams;->waitForUpdatedDetails:Z

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->show(Z)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget-object v1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;->paymentRequestService:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object v3, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;->paymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    iget-object v4, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;->methodData:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;->details:Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    invoke-interface {p0, v1, v3, v4, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->initAndValidate(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;[Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V

    return v2

    :pswitch_c
    sget-object p0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    sget-object v1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
