.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;ZZLjava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->C()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->isAcceptingUserInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->i(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->C()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;->onPaymentRequestReadyToPay(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    :cond_0
    return-void
.end method
