.class public abstract LG5/B3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Class;)LR1/m;
    .locals 2

    const-string v0, "receiver"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, LR1/n;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, LR1/n;

    invoke-virtual {v1}, Lz1/q0;->getGlanceAppWidget()Lz1/V;

    move-result-object v1

    instance-of v1, v1, LR1/m;

    if-eqz v1, :cond_0

    check-cast p0, LR1/n;

    invoke-virtual {p0}, Lz1/q0;->getGlanceAppWidget()Lz1/V;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type androidx.glance.oneui.template.GlanceTemplateAppWidget"

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LR1/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_1

    :goto_0
    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    instance-of v1, p0, Ldb/l;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    check-cast v0, LR1/m;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/Class;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiver"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz1/i0;

    invoke-direct {v0, p0}, Lz1/i0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz1/i0;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    return-object v1
.end method

.method public static c(Ljava/lang/String;Z)Lhc/b;
    .locals 7

    const-string v0, "string"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x60

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, LKc/k;->u(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v3, 0x4

    const-string v4, "/"

    invoke-static {v0, p0, v3, v4}, LKc/k;->z(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    const-string v3, "`"

    const-string v4, ""

    if-ne v0, v2, :cond_1

    invoke-static {p0, v3, v4}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-static {v1, v5, v6}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, v1

    :goto_0
    new-instance v0, Lhc/b;

    new-instance v1, Lhc/c;

    invoke-direct {v1, v4}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v2, Lhc/c;

    invoke-direct {v2, p0}, Lhc/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lhc/b;-><init>(Lhc/c;Lhc/c;Z)V

    return-object v0
.end method

.method public static d(LK3/d;Lz3/g;)LF3/a;
    .locals 4

    new-instance v0, LF3/a;

    sget-object v1, LJ3/f;->b:LJ3/f;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, LJ3/q;->a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, LF3/a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static e(LK3/c;Lz3/g;Z)LF3/b;
    .locals 3

    new-instance v0, LF3/b;

    if-eqz p2, :cond_0

    invoke-static {}, LL3/g;->c()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, LJ3/f;->c:LJ3/f;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, LJ3/q;->a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static f(LK3/d;Lz3/g;I)LF3/a;
    .locals 10

    new-instance v0, LF3/a;

    new-instance v1, LEc/p;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p2, v1, LEc/p;->a:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, LJ3/q;->a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;

    move-result-object p0

    move p1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM3/a;

    iget-object v1, p2, LM3/a;->b:Ljava/lang/Object;

    check-cast v1, LG3/c;

    iget-object v3, p2, LM3/a;->c:Ljava/lang/Object;

    check-cast v3, LG3/c;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, v1, LG3/c;->a:[F

    array-length v5, v4

    iget-object v6, v3, LG3/c;->a:[F

    array-length v7, v6

    if-ne v5, v7, :cond_0

    goto :goto_2

    :cond_0
    array-length p2, v4

    array-length v5, v6

    add-int/2addr p2, v5

    new-array v5, p2, [F

    array-length v7, v4

    invoke-static {v4, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    array-length v7, v6

    invoke-static {v6, v2, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, p2, :cond_2

    aget v8, v5, v6

    cmpl-float v9, v8, v4

    if-eqz v9, :cond_1

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    aget v4, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v2, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p2

    invoke-virtual {v1, p2}, LG3/c;->a([F)LG3/c;

    move-result-object v1

    invoke-virtual {v3, p2}, LG3/c;->a([F)LG3/c;

    move-result-object p2

    new-instance v3, LM3/a;

    invoke-direct {v3, v1, p2}, LM3/a;-><init>(LG3/c;LG3/c;)V

    move-object p2, v3

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, LF3/a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static g(LK3/d;Lz3/g;)LF3/a;
    .locals 4

    new-instance v0, LF3/a;

    sget-object v1, LJ3/f;->d:LJ3/f;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, LJ3/q;->a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x2

    invoke-direct {v0, p1, p0}, LF3/a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static h(LK3/d;Lz3/g;)LF3/a;
    .locals 4

    new-instance v0, LF3/a;

    invoke-static {}, LL3/g;->c()F

    move-result v1

    sget-object v2, LJ3/f;->f:LJ3/f;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, LJ3/q;->a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x3

    invoke-direct {v0, p1, p0}, LF3/a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static i(Lhc/c;)Lhc/b;
    .locals 2

    const-string v0, "topLevelFqName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhc/b;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object v1

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method
