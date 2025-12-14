.class public final LKb/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/h;


# virtual methods
.method public final B(Lhc/c;)LKb/b;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lfb/u;->a:Lfb/u;

    return-object p0
.end method

.method public final m0(Lhc/c;)Z
    .locals 0

    invoke-static {p0, p1}, LG5/U3;->d(LKb/h;Lhc/c;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EMPTY"

    return-object p0
.end method
