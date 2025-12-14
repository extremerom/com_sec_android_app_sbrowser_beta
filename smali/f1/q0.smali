.class public abstract Lf1/q0;
.super Lf1/p0;
.source "SourceFile"


# instance fields
.field public m:LX0/b;


# direct methods
.method public constructor <init>(Lf1/w0;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lf1/p0;-><init>(Lf1/w0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/q0;->m:LX0/b;

    return-void
.end method


# virtual methods
.method public b()Lf1/w0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public c()Lf1/w0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method

.method public final h()LX0/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf1/q0;->m:LX0/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, LX0/b;->b(IIII)LX0/b;

    move-result-object v0

    iput-object v0, p0, Lf1/q0;->m:LX0/b;

    :cond_0
    iget-object p0, p0, Lf1/q0;->m:LX0/b;

    return-object p0
.end method

.method public m()Z
    .locals 0

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method
