.class public final Lm/C;
.super Lm/b;
.source "SourceFile"


# instance fields
.field public final a:Lt/l1;

.field public final b:Lm/s;

.field public final c:Lo3/f;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:LH6/p;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lm/s;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/C;->g:Ljava/util/ArrayList;

    new-instance v0, LH6/p;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lm/C;->h:LH6/p;

    new-instance v0, LX4/i;

    invoke-direct {v0, v1, p0}, LX4/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lt/l1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lt/l1;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Lm/C;->a:Lt/l1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lm/C;->b:Lm/s;

    iput-object p3, v1, Lt/l1;->k:Landroid/view/Window$Callback;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Lt/j1;)V

    iget-boolean p1, v1, Lt/l1;->g:Z

    if-nez p1, :cond_0

    iput-object p2, v1, Lt/l1;->h:Ljava/lang/CharSequence;

    iget p1, v1, Lt/l1;->b:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, v1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p3, v1, Lt/l1;->g:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lf1/W;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Lo3/f;

    const/16 p2, 0x17

    invoke-direct {p1, p2, p0}, Lo3/f;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lm/C;->c:Lo3/f;

    return-void
.end method


# virtual methods
.method public final A()Landroid/view/Menu;
    .locals 4

    iget-boolean v0, p0, Lm/C;->e:Z

    iget-object v1, p0, Lm/C;->a:Lt/l1;

    if-nez v0, :cond_0

    new-instance v0, LS3/F;

    const/4 v2, 0x5

    invoke-direct {v0, v2, p0}, LS3/F;-><init>(ILjava/lang/Object;)V

    new-instance v2, LB3/c;

    invoke-direct {v2, p0}, LB3/c;-><init>(Ljava/lang/Object;)V

    iget-object v3, v1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/widget/Toolbar;->setMenuCallbacks(Ls/s;Ls/g;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/C;->e:Z

    :cond_0
    iget-object p0, v1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public final B(II)V
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget v0, p0, Lt/l1;->b:I

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lt/l1;->b(I)V

    return-void
.end method

.method public final a()Z
    .locals 0

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Lm/C;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lm/C;->f:Z

    iget-object p0, p0, Lm/C;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget p0, p0, Lt/l1;->b:I

    return p0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lm/C;->a:Lt/l1;

    iget-object v1, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Lm/C;->h:LH6/p;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lm/C;->a:Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Lm/C;->h:LH6/p;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lm/C;->A()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lm/C;->k()Z

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result p0

    return p0
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lm/a;

    invoke-direct {v0}, Lm/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p0, p0, Lm/C;->a:Lt/l1;

    invoke-virtual {p0, p1}, Lt/l1;->a(Landroid/view/View;)V

    return-void
.end method

.method public final m(Z)V
    .locals 0

    return-void
.end method

.method public final n(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/C;->B(II)V

    return-void
.end method

.method public final o()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lm/C;->B(II)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/C;->B(II)V

    return-void
.end method

.method public final q(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/C;->B(II)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/C;->B(II)V

    return-void
.end method

.method public final s(F)V
    .locals 0

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    sget-object p1, Lf1/W;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lf1/O;->l(Landroid/view/View;F)V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    const/4 v0, 0x0

    iput-object v0, p0, Lt/l1;->f:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lt/l1;->b:I

    and-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lt/l1;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    const/4 v0, 0x0

    iput-object v0, p0, Lt/l1;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lt/l1;->d()V

    return-void
.end method

.method public final v(Z)V
    .locals 0

    return-void
.end method

.method public final w(I)V
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/l1;->g:Z

    iput-object p1, p0, Lt/l1;->h:Ljava/lang/CharSequence;

    iget v0, p0, Lt/l1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lt/l1;->g:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lf1/W;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-boolean v0, p0, Lt/l1;->g:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lt/l1;->h:Ljava/lang/CharSequence;

    iget v0, p0, Lt/l1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lt/l1;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lf1/W;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 1

    iget-object p0, p0, Lm/C;->a:Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
