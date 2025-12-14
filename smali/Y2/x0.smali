.class public final LY2/x0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements LY2/d0;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/view/ViewGroup;

.field public final d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LY2/x0;->f:Z

    iput-object p1, p0, LY2/x0;->a:Landroid/view/View;

    iput p2, p0, LY2/x0;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, LY2/x0;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, LY2/x0;->d:Z

    invoke-virtual {p0, p1}, LY2/x0;->c(Z)V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, LY2/x0;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LY2/x0;->e:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, LY2/x0;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, LY2/x0;->e:Z

    invoke-static {v0, p1}, LY2/t0;->b(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LY2/x0;->f:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, LY2/x0;->f:Z

    if-nez p1, :cond_0

    sget-object p1, LY2/u0;->a:LY2/d;

    iget-object p1, p0, LY2/x0;->a:Landroid/view/View;

    iget v0, p0, LY2/x0;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object p1, p0, LY2/x0;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LY2/x0;->c(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    if-nez p2, :cond_1

    iget-boolean p1, p0, LY2/x0;->f:Z

    if-nez p1, :cond_0

    sget-object p1, LY2/u0;->a:LY2/d;

    iget-object p1, p0, LY2/x0;->a:Landroid/view/View;

    iget p2, p0, LY2/x0;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object p1, p0, LY2/x0;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LY2/x0;->c(Z)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p1, LY2/u0;->a:LY2/d;

    iget-object p1, p0, LY2/x0;->a:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object p0, p0, LY2/x0;->c:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onTransitionCancel(LY2/f0;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(LY2/f0;)V
    .locals 0

    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-void
.end method

.method public final onTransitionPause(LY2/f0;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LY2/x0;->c(Z)V

    iget-boolean p1, p0, LY2/x0;->f:Z

    if-nez p1, :cond_0

    sget-object p1, LY2/u0;->a:LY2/d;

    iget-object p1, p0, LY2/x0;->a:Landroid/view/View;

    iget p0, p0, LY2/x0;->b:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onTransitionResume(LY2/f0;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LY2/x0;->c(Z)V

    iget-boolean p1, p0, LY2/x0;->f:Z

    if-nez p1, :cond_0

    sget-object p1, LY2/u0;->a:LY2/d;

    iget-object p0, p0, LY2/x0;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onTransitionStart(LY2/f0;)V
    .locals 0

    return-void
.end method
