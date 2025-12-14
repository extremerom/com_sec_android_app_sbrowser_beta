.class Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;
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

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$newHeight:I

.field final synthetic val$oldHeight:I

.field final synthetic val$translationDifference:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Landroid/view/View;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$translationDifference:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$oldHeight:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$newHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$child:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$translationDifference:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$oldHeight:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$newHeight:I

    if-eq v0, v1, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;->val$child:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    float-to-int v0, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    :cond_0
    return-void
.end method
