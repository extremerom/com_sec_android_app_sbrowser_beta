.class final Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/AbortableAdAuction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/AbortableAdAuction;)V
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

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionAbortParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionAbortParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/AbortableAdAuction;->abort()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedAdditionalBids(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;->result:Lorg/chromium/mojo_base/mojom/BigBuffer;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedAuctionAdResponsePromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Lorg/chromium/mojo_base/mojom/BigBuffer;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;->deprecatedRenderUrlReplacements:[Lorg/chromium/blink/mojom/AdKeywordReplacement;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedDeprecatedRenderUrlReplacementsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;[Lorg/chromium/blink/mojom/AdKeywordReplacement;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;->directFromSellerSignalsHeaderAdSlot:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedDirectFromSellerSignalsHeaderAdSlotPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Ljava/lang/String;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;->directFromSellerSignals:Lorg/chromium/blink/mojom/DirectFromSellerSignals;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedDirectFromSellerSignalsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Lorg/chromium/blink/mojom/DirectFromSellerSignals;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;->perBuyerCurrencies:Lorg/chromium/blink/mojom/AuctionAdConfigBuyerCurrencies;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedBuyerCurrenciesPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Lorg/chromium/blink/mojom/AuctionAdConfigBuyerCurrencies;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget v3, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->field:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->buyerTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigBuyerTimeouts;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedBuyerTimeoutsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;ILorg/chromium/blink/mojom/AuctionAdConfigBuyerTimeouts;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedPerBuyerSignalsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Ljava/util/Map;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AbortableAdAuction;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iget v3, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->field:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->jsonValue:Ljava/lang/String;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/AbortableAdAuction;->resolvedPromiseParam(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;ILjava/lang/String;)V

    return v2

    :pswitch_b
    sget-object p0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
        :pswitch_b
        :pswitch_0
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

    sget-object v1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
