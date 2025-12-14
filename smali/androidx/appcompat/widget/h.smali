.class public final Landroidx/appcompat/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/t;


# instance fields
.field public a:Ls/i;

.field public b:Ls/k;

.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/h;->c:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final a(Ls/i;Z)V
    .locals 0

    return-void
.end method

.method public final b(Ls/k;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Ls/k;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/widget/h;->b:Ls/k;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v0, :cond_3

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Lt/i1;

    move-result-object p0

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, p0, Lm/a;->a:I

    const/4 v1, 0x2

    iput v1, p0, Lt/i1;->b:I

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->removeChildrenForExpandedActionView()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Ls/k;->C:Z

    iget-object p1, p1, Ls/k;->n:Ls/i;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ls/i;->p(Z)V

    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, p1, Lr/c;

    if-eqz v1, :cond_4

    check-cast p1, Lr/c;

    check-cast p1, Ls/m;

    iget-object p1, p1, Ls/m;->a:Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    return p0
.end method

.method public final c(Ls/z;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Ls/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/h;->a:Ls/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ls/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/h;->a:Ls/i;

    invoke-virtual {v2, v1}, Ls/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/h;->b:Ls/k;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Ls/k;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/h;->f(Ls/k;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final e(Landroid/content/Context;Ls/i;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/h;->a:Ls/i;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/h;->b:Ls/k;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ls/i;->d(Ls/k;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/h;->a:Ls/i;

    return-void
.end method

.method public final f(Ls/k;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/h;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v2, v1, Lr/c;

    if-eqz v2, :cond_0

    check-cast v1, Lr/c;

    check-cast v1, Ls/m;

    iget-object v1, v1, Ls/m;->a:Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->addChildrenForExpandedActionView()V

    iput-object v1, p0, Landroidx/appcompat/widget/h;->b:Ls/k;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Ls/k;->C:Z

    iget-object p1, p1, Ls/k;->n:Ls/i;

    invoke-virtual {p1, p0}, Ls/i;->p(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->updateBackInvokedCallbackState()V

    const/4 p0, 0x1

    return p0
.end method

.method public final g()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
