.class public abstract LG5/N3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;Landroid/content/res/Resources;)F
    .locals 3

    check-cast p0, Ljava/lang/Iterable;

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final b(Landroid/view/View;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf1/Y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf1/Y;-><init>(Landroid/view/View;Lib/c;)V

    invoke-static {v0}, LG5/F3;->g(Lsb/n;)LJc/m;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, LJc/m;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LJc/m;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0b08cf

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/a;

    if-nez v2, :cond_0

    new-instance v2, Li1/a;

    invoke-direct {v2}, Li1/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, v2, Li1/a;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lfb/o;->f(Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public static final c(Lx1/r;Ljava/lang/String;)Lx1/r;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, La2/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, La2/a;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lb2/c;->a(Lx1/r;Lsb/k;)Lx1/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static d(Lx1/r;Ly1/a;ZII)Lx1/r;
    .locals 2

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    if-nez p3, :cond_2

    new-instance p3, Ly1/b;

    const/4 p4, 0x2

    invoke-direct {p3, p1, v1, p2, p4}, Ly1/b;-><init>(Ly1/a;IZI)V

    invoke-interface {p0, p3}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p3}, LG5/D2;->c(Lx1/r;Ly1/a;I)Lx1/r;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static final e(Lx1/r;FFFF)Lx1/r;
    .locals 1

    const-string v0, "$this$padding"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK1/r;

    invoke-static {p1}, LG5/N3;->h(F)LK1/q;

    move-result-object p1

    invoke-static {p2}, LG5/N3;->h(F)LK1/q;

    move-result-object p2

    invoke-static {p3}, LG5/N3;->h(F)LK1/q;

    move-result-object p3

    invoke-static {p4}, LG5/N3;->h(F)LK1/q;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, LK1/r;-><init>(LK1/q;LK1/q;LK1/q;LK1/q;)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lx1/r;FFFFI)Lx1/r;
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, v1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    int-to-float p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    int-to-float p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    int-to-float p4, v1

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, LG5/N3;->e(Lx1/r;FFFF)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final g(I)LK1/q;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, LK1/q;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, LK1/q;-><init>(FLjava/util/List;I)V

    goto :goto_0

    :cond_0
    new-instance v1, LK1/q;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, LK1/q;-><init>(FLjava/util/List;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final h(F)LK1/q;
    .locals 3

    new-instance v0, LK1/q;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, LK1/q;-><init>(FLjava/util/List;I)V

    return-object v0
.end method
