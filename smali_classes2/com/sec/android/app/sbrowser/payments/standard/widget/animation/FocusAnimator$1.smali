.class Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Runnable;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;->val$callback:Ljava/lang/Runnable;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V

    return-void
.end method
