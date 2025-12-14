.class final Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal;
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
.method public hasRedemptionRecord(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasRedemptionRecord_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordParams;->issuer:Lorg/chromium/url/internal/mojom/Origin;

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

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasRedemptionRecord_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public hasTrustTokens(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasTrustTokens_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensParams;->issuer:Lorg/chromium/url/internal/mojom/Origin;

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

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$HasTrustTokens_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
