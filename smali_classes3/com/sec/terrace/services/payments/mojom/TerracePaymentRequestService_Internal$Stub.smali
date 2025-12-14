.class final Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

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

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceCloseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceCloseParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->close()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceWarnNoFaviconParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceWarnNoFaviconParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->warnNoFavicon()V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnHasEnrolledInstrumentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnHasEnrolledInstrumentParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnHasEnrolledInstrumentParams;->result:I

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onHasEnrolledInstrument(I)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCanMakePaymentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCanMakePaymentParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCanMakePaymentParams;->result:I

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onCanMakePayment(I)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnAbortParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnAbortParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-boolean p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnAbortParams;->abortedSuccessfully:Z

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onAbort(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCompleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCompleteParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onComplete()V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget v1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnErrorParams;->error:I

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnErrorParams;->errorMessage:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onError(ILjava/lang/String;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentResponseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentResponseParams;->response:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onPaymentResponse(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPayerDetailChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPayerDetailChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPayerDetailChangeParams;->detail:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onPayerDetailChange(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingOptionChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingOptionChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingOptionChangeParams;->shippingOptionId:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onShippingOptionChange(Ljava/lang/String;)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingAddressChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingAddressChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingAddressChangeParams;->address:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onShippingAddressChange(Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentMethodChangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentMethodChangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object v1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentMethodChangeParams;->methodName:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentMethodChangeParams;->stringifiedDetails:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_d
    sget-object p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_d
        :pswitch_0
        :pswitch_c
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6

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

    if-eq v2, v4, :cond_3

    const/16 v4, 0xb

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    new-instance v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->getTwaPackageName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
