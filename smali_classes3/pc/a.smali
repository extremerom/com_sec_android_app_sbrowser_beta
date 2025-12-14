.class public final Lpc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc/e;


# virtual methods
.method public final a(LJb/f;Ljava/util/ArrayList;Lo3/i;)V
    .locals 1

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, p1, p2, p3}, Lpc/a;->a(LJb/f;Ljava/util/ArrayList;Lo3/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(LJb/f;Lhc/f;Ljava/util/ArrayList;Lo3/i;)V
    .locals 1

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpc/a;->b(LJb/f;Lhc/f;Ljava/util/ArrayList;Lo3/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(LJb/f;Lhc/f;Lgb/c;Lo3/i;)V
    .locals 1

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpc/a;->c(LJb/f;Lhc/f;Lgb/c;Lo3/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(LWb/j;Lhc/f;Ljava/util/ArrayList;Lo3/i;)V
    .locals 1

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lpc/a;->d(LWb/j;Lhc/f;Ljava/util/ArrayList;Lo3/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(LJb/f;Lo3/i;)Ljava/util/ArrayList;
    .locals 2

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpc/e;

    check-cast v1, Lpc/a;

    invoke-virtual {v1, p1, p2}, Lpc/a;->e(LJb/f;Lo3/i;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final f(LJb/f;Lo3/i;)Ljava/util/ArrayList;
    .locals 2

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpc/e;

    check-cast v1, Lpc/a;

    invoke-virtual {v1, p1, p2}, Lpc/a;->f(LJb/f;Lo3/i;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final g(LWb/j;Lo3/i;)Ljava/util/ArrayList;
    .locals 2

    const-string p0, "thisDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpc/e;

    check-cast v1, Lpc/a;

    invoke-virtual {v1, p1, p2}, Lpc/a;->g(LWb/j;Lo3/i;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final h(LJb/f;LMb/J;Lo3/i;)LMb/J;
    .locals 1

    const-string p0, "propertyDescriptor"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    check-cast v0, Lpc/a;

    invoke-virtual {v0, p1, p2, p3}, Lpc/a;->h(LJb/f;LMb/J;Lo3/i;)LMb/J;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method
