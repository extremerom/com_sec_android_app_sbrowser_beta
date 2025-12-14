.class final Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Collector"
.end annotation


# instance fields
.field private mCanMakePayment:Z

.field private final mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

.field private final mPendingFactories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mPossiblyDuplicatePaymentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;Ljava/util/HashSet;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;Ljava/util/Set;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPossiblyDuplicatePaymentApps:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPendingFactories:Ljava/util/Set;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    return-void
.end method


# virtual methods
.method public getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object p0

    return-object p0
.end method

.method public onCanMakePaymentCalculated(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mCanMakePayment:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mCanMakePayment:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onCanMakePaymentCalculated(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPendingFactories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPendingFactories:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mCanMakePayment:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onCanMakePaymentCalculated(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPossiblyDuplicatePaymentApps:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPossiblyDuplicatePaymentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    return-void
.end method

.method public onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mPossiblyDuplicatePaymentApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPaymentAppCreationError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onPaymentAppCreationError(Ljava/lang/String;)V

    return-void
.end method
