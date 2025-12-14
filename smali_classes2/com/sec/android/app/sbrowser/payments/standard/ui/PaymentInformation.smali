.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContactDetails:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mPaymentMethods:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mShippingAddresses:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private final mShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mShippingAddresses:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mContactDetails:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mPaymentMethods:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-void
.end method


# virtual methods
.method public getContactDetails()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mContactDetails:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getPaymentMethods()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mPaymentMethods:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getShippingAddresses()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mShippingAddresses:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getShoppingCart()Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;->mShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    return-object p0
.end method
