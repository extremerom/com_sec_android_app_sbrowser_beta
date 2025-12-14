.class public final synthetic Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb/g;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of p0, p1, Lq0/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of p0, p1, Ltb/g;

    if-eqz p0, :cond_0

    check-cast p1, Ltb/g;

    invoke-interface {p1}, Ltb/g;->getFunctionDelegate()Ldb/b;

    move-result-object p0

    sget-object p1, LR/m;->a:LR/m;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final getFunctionDelegate()Ldb/b;
    .locals 0

    sget-object p0, LR/m;->a:LR/m;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    sget-object p0, LR/m;->a:LR/m;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
