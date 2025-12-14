.class public final LC1/c;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 1

    new-instance p0, LC1/c;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkb/i;-><init>(ILib/c;)V

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, LC1/c;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/c;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
