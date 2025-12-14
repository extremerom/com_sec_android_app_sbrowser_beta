.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisappearingAnimator"
.end annotation


# instance fields
.field private final mIsDialogClosing:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Z)V
    .locals 9

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->mIsDialogClosing:Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v3, v5, v2

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object v1

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)I

    move-result v7

    int-to-float v7, v7

    new-array v8, v4, [F

    aput v3, v8, v6

    aput v7, v8, v2

    invoke-static {v1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0xc3

    invoke-virtual {v3, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lh2/a;

    invoke-direct {v5}, Lh2/a;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v5, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/AnimatorProperties;->DRAWABLE_ALPHA_PROPERTY:Landroid/util/Property;

    const/16 v7, 0x7f

    filled-new-array {v7, v6}, [I

    move-result-object v7

    invoke-static {p2, v5, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v6

    aput-object v1, v5, v2

    aput-object p2, v5, v4

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    new-array p2, v4, [Landroid/animation/Animator;

    aput-object v0, p2, v6

    aput-object v1, p2, v2

    invoke-virtual {v3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->u(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Landroid/animation/Animator;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->u(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->mIsDialogClosing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$DisappearingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
