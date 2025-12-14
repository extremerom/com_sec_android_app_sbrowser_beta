.class public final Lf1/x0;
.super LG5/Y2;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/Window;

.field public final b:LI3/c;


# direct methods
.method public constructor <init>(Landroid/view/Window;LI3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/x0;->a:Landroid/view/Window;

    iput-object p2, p0, Lf1/x0;->b:LI3/c;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_4

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lf1/x0;->b:LI3/c;

    iget-object v2, v2, LI3/c;->b:Ljava/lang/Object;

    check-cast v2, LG5/J2;

    invoke-virtual {v2}, LG5/J2;->g()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lf1/x0;->i(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lf1/x0;->i(I)V

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final e(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf1/x0;->a:Landroid/view/Window;

    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Lf1/x0;->i(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lf1/x0;->j(I)V

    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 2

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf1/x0;->a:Landroid/view/Window;

    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Lf1/x0;->i(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lf1/x0;->j(I)V

    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lf1/x0;->a:Landroid/view/Window;

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
    invoke-virtual {p0, v2}, Lf1/x0;->j(I)V

    invoke-virtual {p0, v1}, Lf1/x0;->i(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lf1/x0;->j(I)V

    invoke-virtual {p0, v2}, Lf1/x0;->i(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x1800

    invoke-virtual {p0, p1}, Lf1/x0;->j(I)V

    :goto_0
    return-void
.end method

.method public final h(I)V
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_4

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lf1/x0;->b:LI3/c;

    iget-object v2, v2, LI3/c;->b:Ljava/lang/Object;

    check-cast v2, LG5/J2;

    invoke-virtual {v2}, LG5/J2;->j()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lf1/x0;->j(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lf1/x0;->j(I)V

    iget-object v2, p0, Lf1/x0;->a:Landroid/view/Window;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object p0, p0, Lf1/x0;->a:Landroid/view/Window;

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

    iget-object p0, p0, Lf1/x0;->a:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
