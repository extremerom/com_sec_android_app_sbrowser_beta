.class public Lm/y;
.super Landroidx/activity/q;
.source "SourceFile"

# interfaces
.implements Lm/o;


# instance fields
.field public d:Lm/w;

.field public final e:Lm/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7f040195

    if-nez p2, :cond_0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-direct {p0, p1, v2}, Landroidx/activity/q;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lm/x;

    invoke-direct {v2, p0}, Lm/x;-><init>(Lm/y;)V

    iput-object v2, p0, Lm/y;->e:Lm/x;

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    :cond_1
    move-object p1, p0

    check-cast p1, Lm/w;

    iput p2, p1, Lm/w;->i0:I

    invoke-virtual {p0}, Lm/p;->f()V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lm/y;->e()V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    check-cast p0, Lm/w;

    invoke-virtual {p0}, Lm/w;->z()V

    iget-object v0, p0, Lm/w;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lm/w;->m:Lm/s;

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm/s;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final d()Lm/p;
    .locals 3

    iget-object v0, p0, Lm/y;->d:Lm/w;

    if-nez v0, :cond_0

    sget-object v0, Lm/p;->a:LJ2/k0;

    new-instance v0, Lm/w;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Lm/w;-><init>(Landroid/content/Context;Landroid/view/Window;Lm/o;Ljava/lang/Object;)V

    iput-object v0, p0, Lm/y;->d:Lm/w;

    :cond_0
    iget-object p0, p0, Lm/y;->d:Lm/w;

    return-object p0
.end method

.method public final dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0}, Lm/p;->g()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object p0, p0, Lm/y;->e:Lm/x;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm/x;->a:Lm/y;

    invoke-virtual {p0, p1}, Lm/y;->f(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/l0;->o(Landroid/view/View;Landroidx/lifecycle/J;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, LG5/z;->d(Landroid/view/View;LQ2/f;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, LP6/b;->c(Landroid/view/View;Landroidx/activity/B;)V

    return-void
.end method

.method public final f(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    check-cast p0, Lm/w;

    invoke-virtual {p0}, Lm/w;->z()V

    iget-object p0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0}, Lm/p;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object v0

    invoke-virtual {v0}, Lm/p;->a()V

    invoke-super {p0, p1}, Landroidx/activity/q;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0}, Lm/p;->f()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/q;->onStop()V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0}, Lm/p;->h()V

    return-void
.end method

.method public final onSupportActionModeFinished(Lr/b;)V
    .locals 0

    return-void
.end method

.method public final onSupportActionModeStarted(Lr/b;)V
    .locals 0

    return-void
.end method

.method public final onWindowStartingSupportActionMode(Lr/a;)Lr/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Lm/y;->e()V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm/p;->k(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lm/y;->e()V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm/p;->l(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lm/y;->e()V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lm/p;->m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lm/p;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lm/y;->d()Lm/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm/p;->o(Ljava/lang/CharSequence;)V

    return-void
.end method
