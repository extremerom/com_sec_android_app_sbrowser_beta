.class public final synthetic LUc/k;
.super Ltb/r;
.source "SourceFile"

# interfaces
.implements LAb/p;


# virtual methods
.method public final bridge synthetic b()LAb/n;
    .locals 0

    invoke-virtual {p0}, LUc/k;->b()LAb/o;

    move-result-object p0

    return-object p0
.end method

.method public final b()LAb/o;
    .locals 0

    invoke-virtual {p0}, Ltb/r;->a()LAb/u;

    move-result-object p0

    check-cast p0, LAb/p;

    invoke-interface {p0}, LAb/p;->b()LAb/o;

    move-result-object p0

    return-object p0
.end method

.method public final computeReflected()LAb/b;
    .locals 1

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p0}, Ltb/y;->e(LUc/k;)LAb/p;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
