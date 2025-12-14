.class public abstract Lp7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)Lmc/f;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getComponentType(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lmc/f;

    sget-object v1, LGb/p;->d:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->g()Lhc/c;

    move-result-object v1

    new-instance v2, Lhc/b;

    invoke-virtual {v1}, Lhc/c;->b()Lhc/c;

    move-result-object v3

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->f()Lhc/f;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-direct {p0, v2, v0}, Lmc/f;-><init>(Lhc/b;I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpc/c;->d(Ljava/lang/String;)Lpc/c;

    move-result-object p0

    invoke-virtual {p0}, Lpc/c;->g()LGb/l;

    move-result-object p0

    const-string v1, "getPrimitiveType(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "topLevelFqName"

    if-lez v0, :cond_2

    new-instance v2, Lmc/f;

    invoke-virtual {p0}, LGb/l;->d()Lhc/c;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhc/b;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object v3

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v2, v1, v0}, Lmc/f;-><init>(Lhc/b;I)V

    return-object v2

    :cond_2
    new-instance v2, Lmc/f;

    invoke-virtual {p0}, LGb/l;->f()Lhc/c;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lhc/b;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object v3

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-direct {v2, v1, v0}, Lmc/f;-><init>(Lhc/b;I)V

    return-object v2

    :cond_3
    invoke-static {p0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object p0

    sget-object v1, LIb/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object v1

    const-string v2, "fqName"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LIb/d;->h:Ljava/util/HashMap;

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/b;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    new-instance v1, Lmc/f;

    invoke-direct {v1, p0, v0}, Lmc/f;-><init>(Lhc/b;I)V

    return-object v1
.end method

.method public static b(I[I)Z
    .locals 2

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    const/4 v1, 0x1

    shl-int p0, v1, p0

    aget p1, p1, v0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object p2

    :catch_0
    :goto_0
    invoke-virtual {p2}, Lbd/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lp7/b;->a(Ljava/lang/Class;)Lmc/f;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lac/n;->E(Lhc/f;Lmc/f;)V

    goto :goto_0

    :cond_0
    sget-object v4, LOb/c;->a:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v0, v1}, Lac/n;->i(Lhc/f;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v4, LPb/c;->a:Ljava/util/List;

    const-class v4, Ljava/lang/Enum;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v2

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-interface {p0, v0, v2, v1}, Lac/n;->x(Lhc/f;Lhc/b;Lhc/f;)V

    goto :goto_0

    :cond_3
    const-class v4, Ljava/lang/annotation/Annotation;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInterfaces(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lfb/l;->z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v3

    invoke-interface {p0, v3, v0}, Lac/n;->H(Lhc/b;Lhc/f;)Lac/n;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1, v2}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {p0, v0}, Lac/n;->q(Lhc/f;)Lac/o;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v2

    check-cast v1, [Ljava/lang/Object;

    array-length v3, v1

    :goto_2
    if-ge v6, v3, :cond_b

    aget-object v4, v1, v6

    const-string v5, "null cannot be cast to non-null type kotlin.Enum<*>"

    invoke-static {v4, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lac/o;->d(Lhc/b;Lhc/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    :goto_3
    if-ge v6, v2, :cond_b

    aget-object v3, v1, v6

    const-string v4, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Class;

    invoke-static {v3}, Lp7/b;->a(Ljava/lang/Class;)Lmc/f;

    move-result-object v3

    invoke-interface {v0, v3}, Lac/o;->g(Lmc/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    check-cast v1, [Ljava/lang/Object;

    array-length v3, v1

    :goto_4
    if-ge v6, v3, :cond_b

    aget-object v4, v1, v6

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v5

    invoke-interface {v0, v5}, Lac/o;->c(Lhc/b;)Lac/n;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    const-string v7, "null cannot be cast to non-null type kotlin.Annotation"

    invoke-static {v4, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v5, v4, v2}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    :goto_6
    if-ge v6, v2, :cond_b

    aget-object v3, v1, v6

    invoke-interface {v0, v3}, Lac/o;->j(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    invoke-interface {v0}, Lac/o;->b()V

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument value ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-interface {p0}, Lac/n;->b()V

    return-void
.end method


# virtual methods
.method public abstract d([BII)V
.end method
