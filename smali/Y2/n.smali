.class public final LY2/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements LY2/d0;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LY2/n;->d:Z

    iput-object p1, p0, LY2/n;->a:Landroid/widget/ImageView;

    iput-object p2, p0, LY2/n;->b:Landroid/graphics/Matrix;

    iput-object p3, p0, LY2/n;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LY2/n;->d:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iput-boolean p2, p0, LY2/n;->d:Z

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    iget-object v0, p0, LY2/n;->a:Landroid/widget/ImageView;

    const v1, 0x7f0b0dd8

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, LY2/n;->c:Landroid/graphics/Matrix;

    invoke-static {v0, p0}, LY2/I;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, LY2/n;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0dd8

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, LY2/I;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LY2/n;->d:Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, LY2/n;->d:Z

    return-void
.end method

.method public final onTransitionCancel(LY2/f0;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(LY2/f0;)V
    .locals 0

    return-void
.end method

.method public final onTransitionPause(LY2/f0;)V
    .locals 2

    iget-boolean p1, p0, LY2/n;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LY2/n;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0dd8

    iget-object v1, p0, LY2/n;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, LY2/n;->c:Landroid/graphics/Matrix;

    invoke-static {p1, p0}, LY2/I;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final onTransitionResume(LY2/f0;)V
    .locals 1

    iget-object p0, p0, LY2/n;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0dd8

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, LY2/I;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onTransitionStart(LY2/f0;)V
    .locals 0

    return-void
.end method
