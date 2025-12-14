.class public abstract LG5/V2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final b(Ljava/util/ArrayList;)Lx1/r;
    .locals 2

    sget-object v0, Lx1/p;->a:Lx1/p;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/r;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    new-array v0, v1, [Ljava/lang/Class;

    const-class v2, Landroid/provider/Settings$System;

    const-string v4, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY"

    invoke-static {v2, v4, v0}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    instance-of v0, v3, Ljava/lang/String;

    const-string v2, "not_supported"

    if-eqz v0, :cond_1

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-static {v3, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public static final d(Lz1/Q0;)V
    .locals 5

    const-string v0, "root"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/l;

    instance-of v3, v3, Lz1/L;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/l;

    const-string v3, "null cannot be cast to non-null type androidx.glance.appwidget.EmittableSizeBox"

    invoke-static {v1, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lz1/L;

    iget-object v1, v1, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_3

    new-instance v3, LK1/l;

    invoke-direct {v3}, LK1/l;-><init>()V

    iget-object v4, v3, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, LK1/l;

    invoke-direct {v1}, LK1/l;-><init>()V

    iget-object v2, v1, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    invoke-static {p0}, LG5/V2;->e(Lx1/n;)V

    invoke-static {p0}, LG5/V2;->i(Lx1/n;)V

    return-void
.end method

.method public static final e(Lx1/n;)V
    .locals 6

    iget-object v0, p0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/l;

    instance-of v2, v1, Lx1/n;

    if-eqz v2, :cond_0

    check-cast v1, Lx1/n;

    invoke-static {v1}, LG5/V2;->e(Lx1/n;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lx1/l;->b()Lx1/r;

    move-result-object v0

    sget-object v1, Lz1/y0;->o:Lz1/y0;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK1/p;

    sget-object v1, Lf2/g;->a:Lf2/g;

    if-eqz v0, :cond_2

    iget-object v0, v0, LK1/p;->a:Lf2/h;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    instance-of v0, v0, Lf2/g;

    iget-object v3, p0, Lx1/n;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx1/l;

    invoke-interface {v4}, Lx1/l;->b()Lx1/r;

    move-result-object v4

    sget-object v5, Lz1/y0;->q:Lz1/y0;

    invoke-interface {v4, v2, v5}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LK1/p;

    if-eqz v4, :cond_5

    iget-object v4, v4, LK1/p;->a:Lf2/h;

    goto :goto_2

    :cond_5
    move-object v4, v2

    :goto_2
    instance-of v4, v4, Lf2/e;

    if-eqz v4, :cond_4

    invoke-interface {p0}, Lx1/l;->b()Lx1/r;

    move-result-object v0

    invoke-static {v0}, LG5/P3;->b(Lx1/r;)Lx1/r;

    move-result-object v0

    invoke-interface {p0, v0}, Lx1/l;->a(Lx1/r;)V

    :cond_6
    :goto_3
    invoke-interface {p0}, Lx1/l;->b()Lx1/r;

    move-result-object v0

    sget-object v4, Lz1/y0;->p:Lz1/y0;

    invoke-interface {v0, v2, v4}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK1/w;

    if-eqz v0, :cond_7

    iget-object v1, v0, LK1/w;->a:Lf2/h;

    :cond_7
    instance-of v0, v1, Lf2/g;

    if-eqz v0, :cond_b

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/l;

    invoke-interface {v1}, Lx1/l;->b()Lx1/r;

    move-result-object v1

    sget-object v3, Lz1/y0;->r:Lz1/y0;

    invoke-interface {v1, v2, v3}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK1/w;

    if-eqz v1, :cond_a

    iget-object v1, v1, LK1/w;->a:Lf2/h;

    goto :goto_4

    :cond_a
    move-object v1, v2

    :goto_4
    instance-of v1, v1, Lf2/e;

    if-eqz v1, :cond_9

    invoke-interface {p0}, Lx1/l;->b()Lx1/r;

    move-result-object v0

    invoke-static {v0}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v0

    invoke-interface {p0, v0}, Lx1/l;->a(Lx1/r;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public static final f(Lo3/i;LYb/b;)LVb/c;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationsOwner"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LVb/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LVb/c;-><init>(Lo3/i;LYb/b;Z)V

    return-object v0
.end method

.method public static final g(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Float;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {v0}, LG5/V2;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-static {p1}, LG5/c3;->d(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.view.SemBlurInfo$Builder"

    const-string v2, "setColorCurvePreset"

    invoke-static {v1, v2, v0}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2, p1}, LG5/c3;->e(ILjava/lang/Object;)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, LG5/c3;->f(Ljava/lang/Object;F)V

    :cond_6
    invoke-static {p0, p1}, LG5/c3;->c(Landroid/view/View;Ljava/lang/Object;)V

    return v3

    :cond_7
    return v2
.end method

.method public static final h(J)J
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-float v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    long-to-int p0, p0

    int-to-float p0, p0

    invoke-static {v0, p0}, LG5/B;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final i(Lx1/n;)V
    .locals 6

    sget-object v0, Lz1/X;->f:Lz1/X;

    iget-object v1, p0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lx1/l;

    invoke-virtual {v0, v3}, Lz1/X;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/l;

    iget-object v5, p0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    instance-of v2, v3, Lx1/n;

    if-eqz v2, :cond_0

    check-cast v3, Lx1/n;

    invoke-static {v3}, LG5/V2;->i(Lx1/n;)V

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-void
.end method

.method public static final j(Lx1/n;)Ljava/util/LinkedHashMap;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/n;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_5

    check-cast v2, Lx1/l;

    invoke-interface {v2}, Lx1/l;->b()Lx1/r;

    move-result-object v1

    sget-object v5, Lz1/X;->d:Lz1/X;

    invoke-interface {v1, v5}, Lx1/r;->b(Lsb/k;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lx1/p;->a:Lx1/p;

    new-instance v6, Ldb/j;

    invoke-direct {v6, v4, v5}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lz1/y0;->m:Lz1/y0;

    invoke-interface {v1, v6, v5}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldb/j;

    goto :goto_1

    :cond_0
    new-instance v5, Ldb/j;

    invoke-direct {v5, v4, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v5

    :goto_1
    iget-object v5, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v5, Ly1/b;

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Lx1/r;

    if-eqz v5, :cond_1

    iget-object v5, v5, Ly1/b;->a:Ly1/a;

    goto :goto_2

    :cond_1
    move-object v5, v4

    :goto_2
    instance-of v6, v5, Ly1/e;

    if-eqz v6, :cond_2

    new-instance v4, Ldb/j;

    invoke-direct {v4, v5, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance v5, Ldb/j;

    invoke-direct {v5, v4, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    :goto_3
    iget-object v1, v4, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Ly1/e;

    iget-object v1, v4, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Lx1/r;

    instance-of v1, v2, Lx1/n;

    if-eqz v1, :cond_4

    check-cast v2, Lx1/n;

    invoke-static {v2}, LG5/V2;->j(Lx1/n;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v5, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lfb/o;->l()V

    throw v4

    :cond_6
    return-object v0
.end method
