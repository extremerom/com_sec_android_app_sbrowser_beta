.class public abstract Le0/b;
.super Lfb/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Collection;
.implements Lub/a;


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lfb/e;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Le0/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public abstract i(ILjava/lang/Object;)Le0/b;
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfb/e;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfb/e;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract m(Ljava/lang/Object;)Le0/b;
.end method

.method public n(Ljava/util/Collection;)Le0/b;
    .locals 0

    invoke-virtual {p0}, Le0/b;->p()Le0/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Le0/e;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Le0/e;->m()Le0/b;

    move-result-object p0

    return-object p0
.end method

.method public abstract p()Le0/e;
.end method

.method public abstract r(Landroidx/fragment/app/n;)Le0/b;
.end method

.method public abstract s(I)Le0/b;
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    new-instance v0, Ld0/a;

    invoke-direct {v0, p0, p1, p2}, Ld0/a;-><init>(Le0/b;II)V

    return-object v0
.end method

.method public abstract u(ILjava/lang/Object;)Le0/b;
.end method
