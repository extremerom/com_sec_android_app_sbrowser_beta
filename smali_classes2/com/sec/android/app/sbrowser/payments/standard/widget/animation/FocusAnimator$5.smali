.class Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;
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

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;->val$callback:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->b(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V

    return-void
.end method
