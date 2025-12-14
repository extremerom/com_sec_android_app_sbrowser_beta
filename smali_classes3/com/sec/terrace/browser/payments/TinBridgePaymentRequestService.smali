.class public Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;


# instance fields
.field private mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

.field private mHasClosed:Z

.field private mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field private mTerracePaymentRequestService:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->initPaymentRequestServiceData(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)V

    new-instance p2, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;

    invoke-direct {p2, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;-><init>(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mTerracePaymentRequestService:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    sget-object p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p1}, Lcom/sec/terrace/services/TerraceServiceManager;->bind(Lorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    return-void
.end method

.method private initPaymentRequestServiceData(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)V
    .locals 2

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getPaymentRequestOrigin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->paymentRequestOrigin:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getPaymentRequestSecurityOrigin()Lorg/chromium/url/Origin;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/browser/payments/TinOriginConversionUtil;->convertOriginToPaymentOrigin(Lorg/chromium/url/Origin;)Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->paymentRequestSecurityOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getTopLevelOrigin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->topLevelOrigin:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->merchantName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getPaymentOptions()Lorg/chromium/payments/mojom/PaymentOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lorg/chromium/payments/mojom/PaymentOptions;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->paymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->abort()V

    :cond_1
    return-void
.end method

.method public canMakePayment()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->canMakePayment()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mHasClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mHasClosed:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->close()V

    :cond_1
    return-void
.end method

.method public complete(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->complete(I)V

    :cond_1
    return-void
.end method

.method public disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "TinBridgePaymentRequestService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onError(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->close()V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public hasEnrolledInstrument()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->hasEnrolledInstrument()V

    :cond_1
    return-void
.end method

.method public initAndValidate([Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lorg/chromium/payments/mojom/PaymentMethodData;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lorg/chromium/payments/mojom/PaymentDetails;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    iget-object v1, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mTerracePaymentRequestService:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestServiceData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;

    invoke-interface {p2, v1, p0, v0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->initAndValidate(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;[Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onPaymentDetailsNotUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->onPaymentDetailsNotUpdated()V

    :cond_1
    return-void
.end method

.method public retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lorg/chromium/payments/mojom/PaymentValidationErrors;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->retry(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V

    :cond_1
    return-void
.end method

.method public show(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->show(Z)V

    :cond_1
    return-void
.end method

.method public updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lorg/chromium/payments/mojom/PaymentDetails;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;->updateWith(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V

    :cond_1
    return-void
.end method
