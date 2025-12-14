.class public final LRd/b;
.super LRd/c;
.source "SourceFile"


# virtual methods
.method public final a(LQd/n;LQd/n;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LRd/c;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LRd/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LRd/n;

    invoke-virtual {v2, p1, p2}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, LRd/c;->a:Ljava/util/ArrayList;

    const-string v0, ", "

    invoke-static {v0, p0}, LPd/b;->f(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
