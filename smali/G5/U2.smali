.class public abstract LG5/U2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, LH0/i;->c:I

    return-wide p0
.end method

.method public static b(Lo3/i;LJb/h;LPb/n;I)Lo3/i;
    .locals 3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "<this>"

    invoke-static {p0, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Ldb/h;->NONE:Ldb/h;

    new-instance v0, LDb/J;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3, v0}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p3

    iget-object v0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    if-eqz p2, :cond_1

    new-instance v1, LP9/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, LP9/a;-><init>(Lo3/i;LJb/m;LYb/e;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lo3/i;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, LVb/e;

    :goto_0
    new-instance p0, Lo3/i;

    invoke-direct {p0, v0, v1, p3}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    return-object p0
.end method

.method public static final c(Lo3/i;LKb/h;)Lo3/i;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalAnnotations"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LKb/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo3/i;

    sget-object v1, Ldb/h;->NONE:Ldb/h;

    new-instance v2, LDb/J;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0, p1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iget-object v1, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object p0, p0, Lo3/i;->b:Ljava/lang/Object;

    check-cast p0, LVb/e;

    invoke-direct {v0, v1, p0, p1}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/view/MotionEvent;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lx1/r;FFFI)Lx1/r;
    .locals 3

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p1, v1

    :cond_0
    int-to-float v0, v1

    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_1

    int-to-float p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    int-to-float p3, v1

    :cond_2
    const-string p4, "$this$margin"

    invoke-static {p0, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lz1/M0;

    new-instance v1, Lz1/L0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lz1/L0;-><init>(FI)V

    new-instance p1, Lz1/L0;

    invoke-direct {p1, v0, v2}, Lz1/L0;-><init>(FI)V

    new-instance v0, Lz1/L0;

    invoke-direct {v0, p2, v2}, Lz1/L0;-><init>(FI)V

    new-instance p2, Lz1/L0;

    invoke-direct {p2, p3, v2}, Lz1/L0;-><init>(FI)V

    invoke-direct {p4, v1, p1, v0, p2}, Lz1/M0;-><init>(Lz1/L0;Lz1/L0;Lz1/L0;Lz1/L0;)V

    invoke-interface {p0, p4}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method
