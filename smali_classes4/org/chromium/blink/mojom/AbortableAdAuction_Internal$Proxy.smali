.class final Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AbortableAdAuction$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;
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
.method public abort()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionAbortParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionAbortParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolvedAdditionalBids(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolvedAuctionAdResponsePromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Lorg/chromium/mojo_base/mojom/BigBuffer;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;->result:Lorg/chromium/mojo_base/mojom/BigBuffer;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolvedBuyerCurrenciesPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Lorg/chromium/blink/mojom/AuctionAdConfigBuyerCurrencies;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;->perBuyerCurrencies:Lorg/chromium/blink/mojom/AuctionAdConfigBuyerCurrencies;

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

.method public resolvedBuyerTimeoutsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;ILorg/chromium/blink/mojom/AuctionAdConfigBuyerTimeouts;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->field:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;->buyerTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigBuyerTimeouts;

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

.method public resolvedDeprecatedRenderUrlReplacementsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;[Lorg/chromium/blink/mojom/AdKeywordReplacement;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;->deprecatedRenderUrlReplacements:[Lorg/chromium/blink/mojom/AdKeywordReplacement;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolvedDirectFromSellerSignalsHeaderAdSlotPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;->directFromSellerSignalsHeaderAdSlot:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolvedDirectFromSellerSignalsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Lorg/chromium/blink/mojom/DirectFromSellerSignals;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;->directFromSellerSignals:Lorg/chromium/blink/mojom/DirectFromSellerSignals;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public resolvedPerBuyerSignalsPromise(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;",
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

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

.method public resolvedPromiseParam(Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    iput p2, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->field:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;->jsonValue:Ljava/lang/String;

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
