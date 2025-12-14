.class final Lorg/chromium/media/mojom/ProvisionFetcher_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/ProvisionFetcher$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/ProvisionFetcher_Internal;
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
.method public retrieve(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/media/mojom/ProvisionFetcher$Retrieve_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/media/mojom/ProvisionFetcher_Internal$ProvisionFetcherRetrieveParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/ProvisionFetcher_Internal$ProvisionFetcherRetrieveParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/ProvisionFetcher_Internal$ProvisionFetcherRetrieveParams;->defaultUrl:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/media/mojom/ProvisionFetcher_Internal$ProvisionFetcherRetrieveParams;->requestData:Ljava/lang/String;

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

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/ProvisionFetcher_Internal$ProvisionFetcherRetrieveResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/media/mojom/ProvisionFetcher_Internal$ProvisionFetcherRetrieveResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/ProvisionFetcher$Retrieve_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
