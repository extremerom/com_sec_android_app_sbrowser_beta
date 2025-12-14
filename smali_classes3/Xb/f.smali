.class public final LXb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LJb/W;LXb/a;LL8/a;Lyc/w;)Lyc/Q;
    .locals 1

    const-string v0, "typeAttr"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterUpperBoundEraser"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "erasedUpperBound"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p1, LXb/a;->c:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, LXb/b;->INFLEXIBLE:LXb/b;

    invoke-virtual {p1, p2}, LXb/a;->b(LXb/b;)LXb/a;

    move-result-object p1

    :goto_0
    sget-object p2, LXb/e;->a:[I

    iget-object v0, p1, LXb/a;->b:LXb/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    invoke-interface {p0}, LJb/W;->A()Lyc/e0;

    move-result-object p2

    invoke-virtual {p2}, Lyc/e0;->a()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p1, Lyc/F;

    sget-object p2, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    invoke-virtual {p0}, LGb/i;->o()Lyc/A;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lyc/w;->F0()Lyc/L;

    move-result-object p2

    invoke-interface {p2}, Lyc/L;->a()Ljava/util/List;

    move-result-object p2

    const-string v0, "getParameters(...)"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p1, Lyc/F;

    sget-object p0, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-direct {p1, p3, p0}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_4
    invoke-static {p0, p1}, Lyc/b0;->k(LJb/W;LXb/a;)Lyc/Q;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p1, Lyc/F;

    sget-object p0, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-direct {p1, p3, p0}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    :goto_2
    return-object p1
.end method
