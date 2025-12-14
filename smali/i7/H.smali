.class public abstract Li7/H;
.super Li7/C;
.source "SourceFile"


# virtual methods
.method public final a(Li7/p;)I
    .locals 1

    check-cast p1, Li7/o;

    invoke-virtual {p1}, Li7/o;->f()I

    move-result v0

    invoke-virtual {p1}, Li7/p;->d()I

    move-result p1

    mul-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget p0, p0, Li7/C;->d:I

    if-ltz p0, :cond_0

    add-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "fileOffset not yet set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "relative < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Li7/H;->k()V

    invoke-virtual {p0}, Li7/C;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/p;

    iget-object v2, p0, Li7/C;->b:Li7/f;

    invoke-virtual {v1, v2}, Li7/p;->a(Li7/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Li7/C;->c()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/p;

    invoke-virtual {p0}, Li7/p;->d()I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public final j(Ln7/b;)V
    .locals 3

    invoke-virtual {p0}, Li7/C;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li7/p;

    iget-object v2, p0, Li7/C;->b:Li7/f;

    invoke-virtual {v1, v2, p1}, Li7/p;->e(Li7/f;Ln7/b;)V

    iget v1, p0, Li7/C;->c:I

    invoke-virtual {p1, v1}, Ln7/b;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract k()V
.end method
