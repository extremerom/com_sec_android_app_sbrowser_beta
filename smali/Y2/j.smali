.class public final LY2/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements LY2/d0;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, LY2/j;->c:Landroid/view/View;

    iput-object p2, p0, LY2/j;->a:Landroid/graphics/Rect;

    iput-object p3, p0, LY2/j;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LY2/j;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, LY2/j;->c:Landroid/view/View;

    if-nez p2, :cond_0

    iget-object p0, p0, LY2/j;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LY2/j;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
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

    iget-object p1, p0, LY2/j;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LY2/k;->b:Landroid/graphics/Rect;

    :cond_0
    const v1, 0x7f0b0dd6

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, LY2/j;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTransitionResume(LY2/f0;)V
    .locals 1

    iget-object p0, p0, LY2/j;->c:Landroid/view/View;

    const p1, 0x7f0b0dd6

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onTransitionStart(LY2/f0;)V
    .locals 0

    return-void
.end method
