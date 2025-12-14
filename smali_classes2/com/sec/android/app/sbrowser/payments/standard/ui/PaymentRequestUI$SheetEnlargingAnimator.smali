.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SheetEnlargingAnimator"
.end annotation


# instance fields
.field private mContainerHeightDifference:I

.field private final mIsButtonBarLockedInPlace:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->mIsButtonBarLockedInPlace:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->update(F)V

    return-void
.end method

.method private update(F)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->mContainerHeightDifference:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->mIsButtonBarLockedInPlace:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/ScrollView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->u(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->s(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->y(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$NotifierForTest;->run()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    sub-int/2addr p5, p9

    iput p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->mContainerHeightDifference:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->u(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 p2, 0xe1

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p1

    new-instance p2, Lh2/c;

    invoke-direct {p2}, Lh2/c;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$SheetEnlargingAnimator;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->n(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
