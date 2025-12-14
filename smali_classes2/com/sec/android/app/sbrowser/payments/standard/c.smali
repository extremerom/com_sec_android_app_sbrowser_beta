.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/c;->a:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/c;->b:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/c;->c:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/c;->b:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/c;->c:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/c;->a:Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;->a(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory$Creator;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    return-void
.end method
