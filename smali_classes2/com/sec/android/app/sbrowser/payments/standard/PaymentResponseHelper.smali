.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;

.field private mPayerDataFromApp:Lcom/sec/terrace/browser/payments/TerracePayerData;

.field private final mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

.field private mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

.field private final mSelectedContact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

.field private final mSelectedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

.field private mSelectedShippingAddress:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

.field private final mSkipToGpay:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;ZLcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    new-instance v1, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    invoke-direct {v1}, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;-><init>()V

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSkipToGpay:Z

    check-cast p3, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedContact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    iget-boolean p3, p5, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result p3

    if-nez p3, :cond_0

    if-nez p6, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingOption:Ljava/lang/String;

    :cond_0
    iget-boolean p2, p5, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-eqz p2, :cond_1

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result p2

    if-nez p2, :cond_1

    if-nez p6, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedShippingAddress:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedShippingAddress:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->recordAndLogProfileUse(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedShippingAddress:Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->toPaymentAddress()Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    :cond_1
    return-void
.end method

.method private generatePaymentResponse()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iget-boolean v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPayerDataFromApp:Lcom/sec/terrace/browser/payments/TerracePayerData;

    iget-object v2, v1, Lcom/sec/terrace/browser/payments/TerracePayerData;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    iput-object v2, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    iget-object v1, v1, Lcom/sec/terrace/browser/payments/TerracePayerData;->selectedShippingOptionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->shippingOption:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iget-boolean v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerName()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPayerDataFromApp:Lcom/sec/terrace/browser/payments/TerracePayerData;

    iget-object v1, v1, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSkipToGpay:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedContact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->name:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iget-boolean v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerPhone()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPayerDataFromApp:Lcom/sec/terrace/browser/payments/TerracePayerData;

    iget-object v1, v1, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerPhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->phone:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSkipToGpay:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedContact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerPhone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->phone:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iget-boolean v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerEmail()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPayerDataFromApp:Lcom/sec/terrace/browser/payments/TerracePayerData;

    iget-object v1, v1, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->email:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSkipToGpay:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mSelectedContact:Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->getPayerEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;->email:Ljava/lang/String;

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;->onPaymentResponseReady(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)V

    return-void
.end method


# virtual methods
.method public onPaymentDetailsReceived(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPaymentResponse:Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;

    iput-object p1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->methodName:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;->stringifiedDetails:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->mPayerDataFromApp:Lcom/sec/terrace/browser/payments/TerracePayerData;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->generatePaymentResponse()V

    return-void
.end method
