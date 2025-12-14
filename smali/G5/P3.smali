.class public abstract LG5/P3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;La0/m;)J
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/q;

    const v0, -0x22abc35c

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    sget-object v0, Lz1/C;->a:La0/I;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :try_start_0
    sget-object v1, Lx1/k;->a:La0/L0;

    invoke-virtual {p1, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH0/g;

    iget-wide v1, v1, LH0/g;->a:J

    new-instance v3, LH0/g;

    invoke-direct {v3, v1, v2}, LH0/g;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v3

    :goto_0
    instance-of v1, v3, Ldb/l;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :cond_0
    check-cast v3, LH0/g;

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    iget-wide v2, v3, LH0/g;->a:J

    invoke-static {v2, v3}, LH0/g;->b(J)F

    move-result v4

    int-to-float v5, v1

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {v2, v3}, LH0/g;->a(J)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    return-wide v2

    :cond_1
    const-string v2, "appWidgetSizes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const p0, 0x14af95ec

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    sget-object p0, Lx1/k;->a:La0/L0;

    invoke-virtual {p1, p0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH0/g;

    iget-wide v2, p0, LH0/g;->a:J

    :goto_1
    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    goto/16 :goto_5

    :cond_3
    :goto_2
    const v0, 0x14af95b9

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    const v0, -0x6b1a5d86

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    sget-object v0, LR1/d;->e:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/c;

    iget v0, v0, LM1/c;->a:I

    sget-object v2, LR1/d;->b:La0/L0;

    invoke-virtual {p1, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM1/a;

    iget v2, v2, LM1/a;->a:I

    invoke-static {p0}, Lcom/bumptech/glide/d;->a(Landroid/content/Context;)LM1/f;

    move-result-object v3

    sget-object v4, La2/f;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/16 v4, 0x3c

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_5

    invoke-static {v0, v6}, LM1/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v4, 0x38

    goto :goto_3

    :cond_5
    invoke-static {v0, v6}, LM1/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v4, 0x3a

    goto :goto_3

    :cond_6
    invoke-static {v2, v5}, LM1/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/16 v4, 0x32

    :goto_3
    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    if-ne v0, v6, :cond_8

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_8
    if-ne v0, v5, :cond_9

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_9
    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v6}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_a
    const/16 v3, 0x8

    if-ne v0, v3, :cond_b

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_b
    const/16 v3, 0x10

    if-ne v0, v3, :cond_c

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_c
    const/16 v3, 0x20

    if-ne v0, v3, :cond_d

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_d
    const/16 v3, 0x40

    if-ne v0, v3, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x6

    if-ne p0, v6, :cond_e

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_e
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_f
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_4
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int v2, v4, v0

    sub-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0xe

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-int/2addr v4, p0

    sub-int/2addr p0, v6

    mul-int/lit8 p0, p0, 0xd

    add-int/2addr p0, v4

    int-to-float p0, p0

    invoke-static {v0, p0}, LG5/T2;->b(FF)J

    move-result-wide v2

    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    goto/16 :goto_1

    :goto_5
    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    return-wide v2
.end method

.method public static final b(Lx1/r;)Lx1/r;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK1/p;

    sget-object v1, Lf2/e;->a:Lf2/e;

    invoke-direct {v0, v1}, LK1/p;-><init>(Lf2/h;)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lx1/r;)Lx1/r;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    invoke-static {p0}, LG5/P3;->b(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lx1/r;)Lx1/r;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK1/w;

    sget-object v1, Lf2/e;->a:Lf2/e;

    invoke-direct {v0, v1}, LK1/w;-><init>(Lf2/h;)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lib/f;Lib/g;)Lib/f;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lib/f;->getKey()Lib/g;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final f(Lx1/r;F)Lx1/r;
    .locals 2

    const-string v0, "$this$height"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK1/p;

    new-instance v1, Lf2/c;

    invoke-direct {v1, p1}, Lf2/c;-><init>(F)V

    invoke-direct {v0, v1}, LK1/p;-><init>(Lf2/h;)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lib/f;Lib/g;)Lib/h;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lib/f;->getKey()Lib/g;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lib/i;->a:Lib/i;

    :cond_0
    return-object p0
.end method

.method public static h(Lib/f;Lib/h;)Lib/h;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LG5/O3;->c(Lib/h;Lib/h;)Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public static final i(F)Lx1/r;
    .locals 1

    invoke-static {p0}, LG5/P3;->k(F)Lx1/r;

    move-result-object v0

    invoke-static {v0, p0}, LG5/P3;->f(Lx1/r;F)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final j(I)Lx1/r;
    .locals 2

    new-instance v0, LK1/w;

    new-instance v1, Lf2/f;

    invoke-direct {v1, p0}, Lf2/f;-><init>(I)V

    invoke-direct {v0, v1}, LK1/w;-><init>(Lf2/h;)V

    return-object v0
.end method

.method public static final k(F)Lx1/r;
    .locals 2

    new-instance v0, LK1/w;

    new-instance v1, Lf2/c;

    invoke-direct {v1, p0}, Lf2/c;-><init>(F)V

    invoke-direct {v0, v1}, LK1/w;-><init>(Lf2/h;)V

    return-object v0
.end method

.method public static final l(Lx1/r;)Lx1/r;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK1/p;

    sget-object v1, Lf2/g;->a:Lf2/g;

    invoke-direct {v0, v1}, LK1/p;-><init>(Lf2/h;)V

    invoke-interface {p0, v0}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method
