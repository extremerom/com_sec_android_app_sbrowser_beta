.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lh2/c;

    invoke-direct {v1}, Lh2/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$LineItemBreakdownSection;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
