.class public abstract LG5/R3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()J
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it to rememberSaveable()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcc/I;Lec/g;LX4/i;ZZZ)Lac/q;
    .locals 2

    const-string v0, "proto"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfc/k;->d:Lic/o;

    const-string v1, "propertySignature"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_2

    sget-object p3, Lgc/h;->a:Lic/g;

    invoke-static {p0, p1, p2, p5}, Lgc/h;->b(Lcc/I;Lec/g;LX4/i;Z)Lgc/d;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, LG5/U3;->c(LG5/x3;)Lac/q;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p4, :cond_3

    iget p0, v0, Lfc/e;->b:I

    const/4 p2, 0x2

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_3

    iget-object p0, v0, Lfc/e;->d:Lfc/c;

    const-string p2, "getSyntheticMethod(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lfc/c;->c:I

    invoke-interface {p1, p2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lfc/c;->d:I

    invoke-interface {p1, p0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lac/q;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lac/q;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static synthetic d(Lcc/I;Lec/g;LX4/i;ZZI)Lac/q;
    .locals 8

    and-int/lit8 v0, p5, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p5, 0x10

    if-eqz p3, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, LG5/R3;->c(Lcc/I;Lec/g;LX4/i;ZZZ)Lac/q;

    move-result-object p0

    return-object p0
.end method

.method public static final e([Ljava/lang/Object;Lo3/c;Lsb/a;La0/m;I)Ljava/lang/Object;
    .locals 11

    check-cast p3, La0/q;

    iget v0, p3, La0/q;->P:I

    const/16 v1, 0x24

    invoke-static {v1}, LG5/W3;->a(I)V

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.RememberSaveableKt.rememberSaveable, kotlin.Any>"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lj0/m;->a:La0/L0;

    invoke-virtual {p3, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/k;

    invoke-virtual {p3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    sget-object v8, La0/l;->a:La0/V;

    const/4 v9, 0x0

    if-ne v2, v8, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lj0/k;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p1, Lo3/c;->b:Ljava/lang/Object;

    check-cast v3, Ltb/m;

    invoke-interface {v3, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    if-nez v2, :cond_1

    invoke-interface {p2}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    :cond_1
    move-object v6, v2

    new-instance v10, Lj0/b;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lj0/b;-><init>(Lo3/c;Lj0/k;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p3, v10}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    move-object v3, v2

    check-cast v3, Lj0/b;

    iget-object v2, v3, Lj0/b;->e:[Ljava/lang/Object;

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v9, v3, Lj0/b;->d:Ljava/lang/Object;

    :cond_3
    if-nez v9, :cond_4

    invoke-interface {p2}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v9

    :cond_4
    invoke-virtual {p3, v3}, La0/q;->g(Ljava/lang/Object;)Z

    move-result p2

    and-int/lit8 p4, p4, 0x70

    xor-int/lit8 p4, p4, 0x30

    const/16 v2, 0x20

    if-le p4, v2, :cond_6

    invoke-virtual {p3, p1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_1

    :cond_5
    const/4 p4, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p4, 0x0

    :goto_2
    or-int/2addr p2, p4

    invoke-virtual {p3, v1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-virtual {p3, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-virtual {p3, v9}, La0/q;->g(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-virtual {p3, p0}, La0/q;->g(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p2, p4

    invoke-virtual {p3}, La0/q;->G()Ljava/lang/Object;

    move-result-object p4

    if-nez p2, :cond_7

    if-ne p4, v8, :cond_8

    :cond_7
    new-instance p4, Lj0/a;

    move-object v2, p4

    move-object v4, p1

    move-object v5, v1

    move-object v6, v0

    move-object v7, v9

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lj0/a;-><init>(Lj0/b;Lo3/c;Lj0/k;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_8
    check-cast p4, Lsb/a;

    invoke-static {p4, p3}, La0/d;->e(Lsb/a;La0/m;)V

    return-object v9
.end method
