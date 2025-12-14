.class public abstract Lz0/F;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static c(Lz0/F;Lz0/G;II)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, LG5/U2;->a(II)J

    move-result-wide p2

    iget-wide v0, p1, Lz0/G;->e:J

    sget p0, LH0/i;->c:I

    const/16 p0, 0x20

    shr-long v2, p2, p0

    long-to-int v2, v2

    shr-long v3, v0, p0

    long-to-int p0, v3

    add-int/2addr v2, p0

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p0, p2

    and-long p2, v0, v3

    long-to-int p2, p2

    add-int/2addr p0, p2

    invoke-static {v2, p0}, LG5/U2;->a(II)J

    move-result-wide p2

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, p0}, Lz0/G;->u(JFLsb/k;)V

    return-void
.end method

.method public static d(Lz0/G;JF)V
    .locals 6

    iget-wide v0, p0, Lz0/G;->e:J

    sget v2, LH0/i;->c:I

    const/16 v2, 0x20

    shr-long v3, p1, v2

    long-to-int v3, v3

    shr-long v4, v0, v2

    long-to-int v2, v4

    add-int/2addr v3, v2

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    and-long/2addr v0, v4

    long-to-int p2, v0

    add-int/2addr p1, p2

    invoke-static {v3, p1}, LG5/U2;->a(II)J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lz0/G;->u(JFLsb/k;)V

    return-void
.end method

.method public static e(Lz0/F;Lz0/G;II)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, LG5/U2;->a(II)J

    move-result-wide p2

    invoke-virtual {p0}, Lz0/F;->a()LH0/k;

    move-result-object v0

    sget-object v1, LH0/k;->Ltr:LH0/k;

    const/4 v2, 0x0

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lz0/F;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lz0/F;->b()I

    move-result p0

    iget v0, p1, Lz0/G;->a:I

    sub-int/2addr p0, v0

    sget v0, LH0/i;->c:I

    shr-long v0, p2, v5

    long-to-int v0, v0

    sub-int/2addr p0, v0

    and-long/2addr p2, v3

    long-to-int p2, p2

    invoke-static {p0, p2}, LG5/U2;->a(II)J

    move-result-wide p2

    iget-wide v0, p1, Lz0/G;->e:J

    shr-long v7, p2, v5

    long-to-int p0, v7

    shr-long v7, v0, v5

    long-to-int v5, v7

    add-int/2addr p0, v5

    and-long/2addr p2, v3

    long-to-int p2, p2

    and-long/2addr v0, v3

    long-to-int p3, v0

    add-int/2addr p2, p3

    invoke-static {p0, p2}, LG5/U2;->a(II)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v2, v6}, Lz0/G;->u(JFLsb/k;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, p1, Lz0/G;->e:J

    sget p0, LH0/i;->c:I

    shr-long v7, p2, v5

    long-to-int p0, v7

    shr-long v7, v0, v5

    long-to-int v5, v7

    add-int/2addr p0, v5

    and-long/2addr p2, v3

    long-to-int p2, p2

    and-long/2addr v0, v3

    long-to-int p3, v0

    add-int/2addr p2, p3

    invoke-static {p0, p2}, LG5/U2;->a(II)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v2, v6}, Lz0/G;->u(JFLsb/k;)V

    :goto_1
    return-void
.end method

.method public static f(Lz0/F;Lz0/G;IILm9/g;I)V
    .locals 4

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget p4, Lz0/I;->b:I

    sget-object p4, Lz0/H;->a:Lz0/H;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, LG5/U2;->a(II)J

    move-result-wide p2

    iget-wide v0, p1, Lz0/G;->e:J

    sget p0, LH0/i;->c:I

    const/16 p0, 0x20

    shr-long v2, p2, p0

    long-to-int p5, v2

    shr-long v2, v0, p0

    long-to-int p0, v2

    add-int/2addr p5, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p0, p2

    and-long p2, v0, v2

    long-to-int p2, p2

    add-int/2addr p0, p2

    invoke-static {p5, p0}, LG5/U2;->a(II)J

    move-result-wide p2

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p4}, Lz0/G;->u(JFLsb/k;)V

    return-void
.end method


# virtual methods
.method public abstract a()LH0/k;
.end method

.method public abstract b()I
.end method
