.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator$1;->this$1:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;F)V

    return-void
.end method
