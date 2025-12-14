.class public final Ll7/h;
.super Ll7/p;
.source "SourceFile"


# virtual methods
.method public final e(Ll7/a;)I
    .locals 3

    move-object v0, p1

    check-cast v0, Ll7/p;

    iget-object v1, v0, Ll7/p;->a:Ll7/u;

    iget-object v2, p0, Ll7/p;->a:Ll7/u;

    invoke-virtual {v2, v1}, Ll7/a;->d(Ll7/a;)I

    move-result v1

    iget-object p0, p0, Ll7/p;->b:Ll7/r;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ll7/r;->a:Ll7/t;

    iget-object v0, v0, Ll7/p;->b:Ll7/r;

    iget-object v0, v0, Ll7/r;->a:Ll7/t;

    invoke-virtual {v1, v0}, Ll7/a;->d(Ll7/a;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    return v1

    :cond_1
    check-cast p1, Ll7/h;

    iget-object p0, p0, Ll7/r;->b:Ll7/t;

    iget-object p1, p1, Ll7/p;->b:Ll7/r;

    iget-object p1, p1, Ll7/r;->b:Ll7/t;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "field"

    return-object p0
.end method

.method public final getType()Lm7/c;
    .locals 0

    iget-object p0, p0, Ll7/p;->b:Ll7/r;

    iget-object p0, p0, Ll7/r;->b:Ll7/t;

    iget-object p0, p0, Ll7/t;->a:Ljava/lang/String;

    invoke-static {p0}, Lm7/c;->h(Ljava/lang/String;)Lm7/c;

    move-result-object p0

    return-object p0
.end method
