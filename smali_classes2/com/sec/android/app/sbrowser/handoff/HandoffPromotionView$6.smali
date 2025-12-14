.class Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$6;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$6;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
