.class public Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;


# instance fields
.field private mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method

.method public getTwaPackageName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;->call(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->getTwaPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;->call(Ljava/lang/String;)V

    return-void
.end method

.method public onAbort(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onAbort(Z)V

    return-void
.end method

.method public onCanMakePayment(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onCanMakePayment(I)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onComplete()V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onHasEnrolledInstrument(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onHasEnrolledInstrument(I)V

    return-void
.end method

.method public onPayerDetailChange(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)Lorg/chromium/payments/mojom/PayerDetail;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onPayerDetailChange(Lorg/chromium/payments/mojom/PayerDetail;)V

    return-void
.end method

.method public onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentResponse(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)Lorg/chromium/payments/mojom/PaymentResponse;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onPaymentResponse(Lorg/chromium/payments/mojom/PaymentResponse;)V

    return-void
.end method

.method public onShippingAddressChange(Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;)Lorg/chromium/payments/mojom/PaymentAddress;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onShippingAddressChange(Lorg/chromium/payments/mojom/PaymentAddress;)V

    return-void
.end method

.method public onShippingOptionChange(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onShippingOptionChange(Ljava/lang/String;)V

    return-void
.end method

.method public warnNoFavicon()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestServiceImpl;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->warnNoFavicon()V

    return-void
.end method
