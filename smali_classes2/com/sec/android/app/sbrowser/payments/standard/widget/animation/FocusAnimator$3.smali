.class Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$newHeight:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;->val$newHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;->val$child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;->val$newHeight:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    return-void
.end method
