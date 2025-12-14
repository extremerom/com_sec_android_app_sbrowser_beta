.class public final Lg7/u;
.super Lg7/k;
.source "SourceFile"


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lg7/i;)Lg7/g;
    .locals 2

    new-instance v0, Lg7/u;

    iget-object v1, p0, Lg7/g;->c:Lk7/p;

    iget-object p0, p0, Lg7/g;->d:Lk7/l;

    invoke-direct {v0, p1, v1, p0}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    return-object v0
.end method

.method public final i(Lk7/l;)Lg7/g;
    .locals 2

    new-instance v0, Lg7/u;

    iget-object v1, p0, Lg7/g;->b:Lg7/i;

    iget-object p0, p0, Lg7/g;->c:Lk7/p;

    invoke-direct {v0, v1, p0, p1}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    return-object v0
.end method
