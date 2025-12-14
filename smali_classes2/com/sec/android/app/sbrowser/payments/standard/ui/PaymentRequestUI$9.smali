.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->addCardAndAddressOptionsSettingsView(Landroid/widget/LinearLayout;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x13

    const/4 p3, 0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->o(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;->getEditButtonState()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->q(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$ShippingOptionSection;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$9;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return p3

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
