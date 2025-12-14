.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onCardAndAddressSettingsClicked()V

    const-string p0, "503"

    const-string p1, "2365"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060832

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$7;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f140bf7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
