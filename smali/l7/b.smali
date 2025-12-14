.class public final Ll7/b;
.super Ln7/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll7/b;

    invoke-virtual {p0, p1}, Ll7/b;->h(Ll7/b;)I

    move-result p0

    return p0
.end method

.method public final h(Ll7/b;)I
    .locals 7

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v1, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll7/a;

    invoke-virtual {p1, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll7/a;

    invoke-virtual {v5, v6}, Ll7/a;->d(Ll7/a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    if-le v0, v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v3
.end method
