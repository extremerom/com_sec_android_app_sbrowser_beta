.class public final Ltb/q;
.super Ltb/r;
.source "SourceFile"

# interfaces
.implements LAb/t;


# virtual methods
.method public final bridge synthetic b()LAb/n;
    .locals 0

    invoke-virtual {p0}, Ltb/q;->b()LAb/s;

    move-result-object p0

    return-object p0
.end method

.method public final b()LAb/s;
    .locals 0

    invoke-virtual {p0}, Ltb/r;->a()LAb/u;

    move-result-object p0

    check-cast p0, LAb/t;

    invoke-interface {p0}, LAb/t;->b()LAb/s;

    move-result-object p0

    return-object p0
.end method

.method public final computeReflected()LAb/b;
    .locals 1

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p0}, Ltb/y;->g(Ltb/q;)LAb/t;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltb/q;->b()LAb/s;

    move-result-object p0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    check-cast p0, LDb/s;

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
