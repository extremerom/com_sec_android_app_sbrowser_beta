.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

.field public final synthetic c:Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->c:Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->c:Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->c(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/e;->c:Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->d(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
