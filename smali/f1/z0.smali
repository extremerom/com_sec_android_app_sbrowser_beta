.class public Lf1/z0;
.super LG5/Y2;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsetsController;

.field public final b:LI3/c;

.field public final c:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;LI3/c;)V
    .locals 1

    invoke-static {p1}, Lf1/E;->i(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Lf1/z0;->b:LI3/c;

    iput-object p1, p0, Lf1/z0;->c:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 0

    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-static {p0, p1}, Lf1/E;->v(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lf1/z0;->c:Landroid/view/Window;

    const/16 v1, 0x10

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lf1/z0;->i(I)V

    :cond_0
    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    invoke-static {p0}, Lf1/y0;->y(Landroid/view/WindowInsetsController;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lf1/z0;->j(I)V

    :cond_2
    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    invoke-static {p0}, Lf1/y0;->D(Landroid/view/WindowInsetsController;)V

    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lf1/z0;->c:Landroid/view/Window;

    const/16 v1, 0x2000

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lf1/z0;->i(I)V

    :cond_0
    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    invoke-static {p0}, Lf1/E;->n(Landroid/view/WindowInsetsController;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lf1/z0;->j(I)V

    :cond_2
    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    invoke-static {p0}, Lf1/E;->u(Landroid/view/WindowInsetsController;)V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 3

    iget-object v0, p0, Lf1/z0;->c:Landroid/view/Window;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1538b9a6

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    const/16 v2, 0x800

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lf1/z0;->j(I)V

    invoke-virtual {p0, v1}, Lf1/z0;->i(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lf1/z0;->j(I)V

    invoke-virtual {p0, v2}, Lf1/z0;->i(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x1800

    invoke-virtual {p0, p1}, Lf1/z0;->j(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    invoke-static {p0, p1}, Lf1/E;->y(Landroid/view/WindowInsetsController;I)V

    :goto_0
    return-void
.end method

.method public final h(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf1/z0;->b:LI3/c;

    iget-object v0, v0, LI3/c;->b:Ljava/lang/Object;

    check-cast v0, LG5/J2;

    invoke-virtual {v0}, LG5/J2;->j()V

    :cond_0
    iget-object p0, p0, Lf1/z0;->a:Landroid/view/WindowInsetsController;

    and-int/lit8 p1, p1, -0x9

    invoke-static {p0, p1}, Lf1/E;->o(Landroid/view/WindowInsetsController;I)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object p0, p0, Lf1/z0;->c:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object p0, p0, Lf1/z0;->c:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
