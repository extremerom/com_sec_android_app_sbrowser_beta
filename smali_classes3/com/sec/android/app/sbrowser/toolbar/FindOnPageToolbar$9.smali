.class Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setEditTextExtensionAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

.field final synthetic val$findStatusWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->val$findStatusWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->x(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->w(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->z(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->w(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut60()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->A(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->z(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->A(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->y(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->val$findStatusWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->y(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut60()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->B(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-static {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->I(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->B(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->n(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->F(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;->this$0:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->t(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->F(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V

    return v1
.end method
