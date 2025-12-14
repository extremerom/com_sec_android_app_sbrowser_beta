.class public abstract LG5/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx0/j;Lkb/a;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    instance-of v1, p1, LS/F;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, LS/F;

    iget v2, v1, LS/F;->b:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, LS/F;->b:I

    goto :goto_0

    :cond_0
    new-instance v1, LS/F;

    invoke-direct {v1, p1}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p1, v1, LS/F;->a:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v1, LS/F;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Lx0/a;

    iget-object p0, p1, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    const-string p1, "<this>"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx0/j;->d:Lx0/k;

    iget-object p0, p0, Lx0/k;->k:Lx0/a;

    iget-object p0, p0, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v2, v0

    goto :goto_2

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static b(J)C
    .locals 3

    long-to-int v0, p0

    int-to-char v0, v0

    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Out of range: %s"

    invoke-static {p1, p0}, Lcom/google/common/base/C;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c([BII)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method

.method public static d(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method
