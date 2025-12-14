.class public Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;->lambda$create$0(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    return-void
.end method

.method private synthetic lambda$create$0(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;->a(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onCanMakePaymentCalculated(Z)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    return-void
.end method

.method public static merchantSupportsBasicCard(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "basic-card"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/BasicCardUtils;->convertBasicCardToNetworks(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public create(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/c;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/c;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
