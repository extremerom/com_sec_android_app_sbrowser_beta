.class public final Ls/b;
.super Lt/j0;
.source "SourceFile"


# instance fields
.field public final synthetic j:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Ls/b;->j:Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lt/j0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Ls/x;
    .locals 1

    iget-object p0, p0, Ls/b;->j:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Ls/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lt/i;

    iget-object p0, p0, Lt/i;->a:Lt/m;

    iget-object p0, p0, Lt/m;->t:Lt/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls/r;->a()Ls/y;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Ls/b;->j:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->d:Ls/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Ls/k;

    invoke-interface {v1, v0}, Ls/h;->a(Ls/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls/b;->b()Ls/x;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ls/y;

    invoke-virtual {p0}, Ls/y;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
