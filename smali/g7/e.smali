.class public final Lg7/e;
.super Lg7/k;
.source "SourceFile"


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    const-string p0, "code-address"

    return-object p0
.end method

.method public final i(Lk7/l;)Lg7/g;
    .locals 0

    new-instance p1, Lg7/e;

    iget-object p0, p0, Lg7/g;->c:Lk7/p;

    invoke-direct {p1, p0}, Lg7/k;-><init>(Lk7/p;)V

    return-object p1
.end method
