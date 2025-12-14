.class Lorg/chromium/ui/widget/LoadingView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/LoadingView;


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/chromium/ui/widget/LoadingView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/widget/LoadingView$2;->this$0:Lorg/chromium/ui/widget/LoadingView;

    invoke-static {p0}, Lorg/chromium/ui/widget/LoadingView;->e(Lorg/chromium/ui/widget/LoadingView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/LoadingView$2;->this$0:Lorg/chromium/ui/widget/LoadingView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/chromium/ui/interpolators/Interpolators;->FAST_OUT_SLOW_IN_INTERPOLATOR:Lh2/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/chromium/ui/widget/LoadingView$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/ui/widget/LoadingView$2$1;-><init>(Lorg/chromium/ui/widget/LoadingView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
