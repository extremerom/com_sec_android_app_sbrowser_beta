.class public Lorg/chromium/ui/CaptionBarInsetsRectProvider;
.super Lorg/chromium/ui/InsetsRectProvider;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 6

    iget-object v0, p2, Lf1/w0;->a:Lf1/u0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lorg/chromium/ui/InsetsRectProvider;->onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object p0

    iget-object p1, p0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p1, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object p1

    invoke-virtual {p1, v0}, LX0/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p0, Lf1/w0;->a:Lf1/u0;

    invoke-virtual {p1, v1}, Lf1/u0;->f(I)LX0/b;

    move-result-object p2

    invoke-static {v0, p2}, LX0/b;->c(LX0/b;LX0/b;)LX0/b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf1/u0;->f(I)LX0/b;

    move-result-object v1

    invoke-static {v1, p2}, LX0/b;->c(LX0/b;LX0/b;)LX0/b;

    move-result-object v1

    iget v2, v1, LX0/b;->a:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v1, LX0/b;->b:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v1, LX0/b;->c:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v1, v1, LX0/b;->d:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v4, v5, v1}, LX0/b;->b(IIII)LX0/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lf1/u0;->f(I)LX0/b;

    move-result-object p1

    invoke-static {p1, p2}, LX0/b;->c(LX0/b;LX0/b;)LX0/b;

    move-result-object p1

    iget p2, p1, LX0/b;->a:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v4, p1, LX0/b;->b:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p1, LX0/b;->c:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget p1, p1, LX0/b;->d:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v4, v5, p1}, LX0/b;->b(IIII)LX0/b;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt p2, v3, :cond_1

    new-instance p2, Lf1/n0;

    invoke-direct {p2, p0}, Lf1/n0;-><init>(Lf1/w0;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lf1/m0;

    invoke-direct {p2, p0}, Lf1/m0;-><init>(Lf1/w0;)V

    :goto_0
    invoke-virtual {p2, v0, v1}, Lf1/o0;->c(ILX0/b;)V

    invoke-virtual {p2, v2, p1}, Lf1/o0;->c(ILX0/b;)V

    invoke-virtual {p2}, Lf1/o0;->b()Lf1/w0;

    move-result-object p0

    return-object p0
.end method
