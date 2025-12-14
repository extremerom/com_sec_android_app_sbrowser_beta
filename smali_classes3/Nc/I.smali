.class public LNc/I;
.super LNc/a;
.source "SourceFile"

# interfaces
.implements LNc/H;


# virtual methods
.method public final e(Lkb/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LNc/t0;->z(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method
