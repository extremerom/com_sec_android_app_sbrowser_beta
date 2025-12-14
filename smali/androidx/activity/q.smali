.class public Landroidx/activity/q;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/activity/B;
.implements LQ2/f;


# instance fields
.field public a:Landroidx/lifecycle/L;

.field public final b:LQ2/e;

.field public final c:Landroidx/activity/A;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, LQ2/e;

    invoke-direct {p1, p0}, LQ2/e;-><init>(LQ2/f;)V

    iput-object p1, p0, Landroidx/activity/q;->b:LQ2/e;

    new-instance p1, Landroidx/activity/A;

    new-instance p2, LG6/e;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2}, Landroidx/activity/A;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Landroidx/activity/q;->c:Landroidx/activity/A;

    return-void
.end method

.method public static a(Landroidx/activity/q;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/q;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Landroidx/lifecycle/L;
    .locals 1

    iget-object v0, p0, Landroidx/activity/q;->a:Landroidx/lifecycle/L;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, Landroidx/activity/q;->a:Landroidx/lifecycle/L;

    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window!!.decorView"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/l0;->o(Landroid/view/View;Landroidx/lifecycle/J;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, LP6/b;->c(Landroid/view/View;Landroidx/activity/B;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, LG5/z;->d(Landroid/view/View;LQ2/f;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/D;
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/L;

    move-result-object p0

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/A;
    .locals 0

    iget-object p0, p0, Landroidx/activity/q;->c:Landroidx/activity/A;

    return-object p0
.end method

.method public final getSavedStateRegistry()LQ2/d;
    .locals 0

    iget-object p0, p0, Landroidx/activity/q;->b:LQ2/e;

    iget-object p0, p0, LQ2/e;->b:LQ2/d;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/q;->c:Landroidx/activity/A;

    invoke-virtual {p0}, Landroidx/activity/A;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, LA8/a;->d(Landroidx/activity/q;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const-string v1, "onBackInvokedDispatcher"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/q;->c:Landroidx/activity/A;

    iput-object v0, v1, Landroidx/activity/A;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean v0, v1, Landroidx/activity/A;->g:Z

    invoke-virtual {v1, v0}, Landroidx/activity/A;->e(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/q;->b:LQ2/e;

    invoke-virtual {v0, p1}, LQ2/e;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/L;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/B;->ON_CREATE:Landroidx/lifecycle/B;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "super.onSaveInstanceState()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/q;->b:LQ2/e;

    invoke-virtual {p0, v0}, LQ2/e;->c(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/L;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/B;->ON_RESUME:Landroidx/lifecycle/B;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/q;->b()Landroidx/lifecycle/L;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/q;->a:Landroidx/lifecycle/L;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/q;->c()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/q;->c()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/q;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
