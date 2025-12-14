.class Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->startAnimator(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBottom(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)V

    return-void
.end method
