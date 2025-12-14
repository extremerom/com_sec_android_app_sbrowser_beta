.class Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/PaymentRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;
    }
.end annotation


# instance fields
.field private final mComponentPaymentRequestImplCreator:Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;

.field private mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mComponentPaymentRequestImplCreator:Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->onComponentPaymentRequestImplClosed()V

    return-void
.end method

.method private onComponentPaymentRequestImplClosed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abort()V

    return-void
.end method

.method public canMakePayment()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->canMakePayment()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->closeByRenderer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method

.method public complete(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->complete(I)V

    return-void
.end method

.method public hasEnrolledInstrument()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->hasEnrolledInstrument()V

    return-void
.end method

.method public init(Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-eqz v0, :cond_0

    const-string p1, "Attempted initialization twice."

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortForInvalidDataFromRenderer(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mComponentPaymentRequestImplCreator:Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;

    new-instance v5, Lcom/sec/terrace/browser/payments/a;

    const/4 v1, 0x1

    invoke-direct {v5, v1, p0}, Lcom/sec/terrace/browser/payments/a;-><init>(ILjava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;->createComponentPaymentRequestImplIfParamsValid(Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    return-void
.end method

.method public onPaymentDetailsNotUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->onPaymentDetailsNotUpdated()V

    return-void
.end method

.method public retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V

    return-void
.end method

.method public show(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->show(ZZ)V

    return-void
.end method

.method public updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;->mPaymentRequestService:Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V

    return-void
.end method
