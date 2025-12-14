.class public Lf1/s0;
.super Lf1/r0;
.source "SourceFile"


# instance fields
.field public n:LX0/b;

.field public o:LX0/b;

.field public p:LX0/b;


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

    invoke-direct {p0, p1, p2}, Lf1/r0;-><init>(Lf1/w0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/s0;->n:LX0/b;

    iput-object p1, p0, Lf1/s0;->o:LX0/b;

    iput-object p1, p0, Lf1/s0;->p:LX0/b;

    return-void
.end method


# virtual methods
.method public g()LX0/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf1/s0;->o:LX0/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LX0/b;->d(Landroid/graphics/Insets;)LX0/b;

    move-result-object v0

    iput-object v0, p0, Lf1/s0;->o:LX0/b;

    :cond_0
    iget-object p0, p0, Lf1/s0;->o:LX0/b;

    return-object p0
.end method

.method public i()LX0/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf1/s0;->n:LX0/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LX0/b;->d(Landroid/graphics/Insets;)LX0/b;

    move-result-object v0

    iput-object v0, p0, Lf1/s0;->n:LX0/b;

    :cond_0
    iget-object p0, p0, Lf1/s0;->n:LX0/b;

    return-object p0
.end method

.method public k()LX0/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf1/s0;->p:LX0/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LX0/b;->d(Landroid/graphics/Insets;)LX0/b;

    move-result-object v0

    iput-object v0, p0, Lf1/s0;->p:LX0/b;

    :cond_0
    iget-object p0, p0, Lf1/s0;->p:LX0/b;

    return-object p0
.end method

.method public l(IIII)Lf1/w0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lf1/p0;->c:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object p0

    return-object p0
.end method
