.class public final Lwd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/i;
.implements Lwd/h;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Lwd/u;

.field public b:J


# virtual methods
.method public final A(Lwd/j;)J
    .locals 2

    const-string v0, "bytes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lwd/g;->j(Lwd/j;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final B()I
    .locals 9

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v0, Lwd/u;->b:I

    iget v4, v0, Lwd/u;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lwd/u;->a:[B

    aget-byte v7, v6, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v1, 0x2

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v1, v1, 0x4

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    iget-wide v6, p0, Lwd/g;->b:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lwd/g;->b:J

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object v1

    iput-object v1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lwd/u;->b:I

    :goto_0
    move p0, v5

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic C(Ljava/lang/String;)Lwd/h;
    .locals 0

    invoke-virtual {p0, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic D(Lwd/j;)Lwd/h;
    .locals 0

    invoke-virtual {p0, p1}, Lwd/g;->V(Lwd/j;)V

    return-object p0
.end method

.method public final E()S
    .locals 9

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v0, Lwd/u;->b:I

    iget v4, v0, Lwd/u;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, 0x1

    iget-object v7, v0, Lwd/u;->a:[B

    aget-byte v8, v7, v1

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v1, v6

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    iget-wide v6, p0, Lwd/g;->b:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lwd/g;->b:J

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object v1

    iput-object v1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    goto :goto_0

    :cond_1
    iput v1, v0, Lwd/u;->b:I

    :goto_0
    int-to-short p0, v5

    :goto_1
    return p0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final G(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    const-string v0, "charset"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget-wide v1, p0, Lwd/g;->b:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_3

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v0, Lwd/u;->b:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    iget v4, v0, Lwd/u;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lwd/g;->t(J)[B

    move-result-object p0

    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    long-to-int v3, p1

    iget-object v4, v0, Lwd/u;->a:[B

    invoke-direct {v2, v4, v1, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p3, v0, Lwd/u;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Lwd/u;->b:I

    iget-wide v3, p0, Lwd/g;->b:J

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lwd/g;->b:J

    iget p1, v0, Lwd/u;->c:I

    if-ne p3, p1, :cond_2

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object p1

    iput-object p1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_4
    const-string p0, "byteCount: "

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lwd/g;->b:J

    sget-object v2, LKc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final I(J)Z
    .locals 2

    iget-wide v0, p0, Lwd/g;->b:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final J()I
    .locals 12

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    invoke-virtual {p0, v2, v3}, Lwd/g;->f(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    move v6, v5

    move v5, v2

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_1

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    move v6, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_2

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_9

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    :goto_0
    iget-wide v7, p0, Lwd/g;->b:J

    int-to-long v9, v5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_8

    :goto_1
    if-ge v2, v5, :cond_4

    int-to-long v7, v2

    invoke-virtual {p0, v7, v8}, Lwd/g;->f(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_3

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7, v8}, Lwd/g;->K(J)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v9, v10}, Lwd/g;->K(J)V

    const p0, 0x10ffff

    if-le v1, p0, :cond_5

    goto :goto_2

    :cond_5
    const p0, 0xd800

    if-gt p0, v1, :cond_6

    const p0, 0xe000

    if-ge v1, p0, :cond_6

    goto :goto_2

    :cond_6
    if-ge v1, v6, :cond_7

    goto :goto_2

    :cond_7
    move v4, v1

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "size < "

    const-string v3, ": "

    invoke-static {v5, v2, v3}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lwd/g;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (to read code point prefixed 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LG5/s2;->e(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lwd/g;->K(J)V

    :goto_2
    return v4

    :cond_a
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final K(J)V
    .locals 6

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    if-eqz v0, :cond_1

    iget v1, v0, Lwd/u;->c:I

    iget v2, v0, Lwd/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-wide v2, p0, Lwd/g;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lwd/g;->b:J

    sub-long/2addr p1, v4

    iget v2, v0, Lwd/u;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lwd/u;->b:I

    iget v1, v0, Lwd/u;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object v1

    iput-object v1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    return-void
.end method

.method public final L([B)Lwd/h;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lwd/g;->W([BII)V

    return-object p0
.end method

.method public final bridge synthetic O(J)Lwd/h;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwd/g;->d0(J)V

    return-object p0
.end method

.method public final Q(B)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lwd/g;->h(BJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final R(Lwd/g;J)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_c

    iget-wide v1, p1, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_b

    iget-object v0, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, v0, Lwd/u;->c:I

    iget-object v1, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v1, Lwd/u;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_5

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lwd/u;->g:Lwd/u;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lwd/u;->e:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lwd/u;->c:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    iget-boolean v4, v0, Lwd/u;->d:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    iget v4, v0, Lwd/u;->b:I

    :goto_2
    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v1, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lwd/u;->d(Lwd/u;I)V

    iget-wide v0, p1, Lwd/g;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lwd/g;->b:J

    iget-wide v0, p0, Lwd/g;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lwd/g;->b:J

    goto/16 :goto_7

    :cond_2
    iget-object v0, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    long-to-int v2, p2

    if-lez v2, :cond_4

    iget v3, v0, Lwd/u;->c:I

    iget v4, v0, Lwd/u;->b:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_4

    const/16 v3, 0x400

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lwd/u;->c()Lwd/u;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-static {}, Lwd/v;->b()Lwd/u;

    move-result-object v3

    iget v4, v0, Lwd/u;->b:I

    add-int v5, v4, v2

    iget-object v6, v0, Lwd/u;->a:[B

    iget-object v7, v3, Lwd/u;->a:[B

    invoke-static {v1, v4, v5, v6, v7}, Lfb/l;->h(III[B[B)V

    :goto_3
    iget v4, v3, Lwd/u;->b:I

    add-int/2addr v4, v2

    iput v4, v3, Lwd/u;->c:I

    iget v4, v0, Lwd/u;->b:I

    add-int/2addr v4, v2

    iput v4, v0, Lwd/u;->b:I

    iget-object v0, v0, Lwd/u;->g:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lwd/u;->b(Lwd/u;)V

    iput-object v3, p1, Lwd/g;->a:Lwd/u;

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_4
    iget-object v0, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, v0, Lwd/u;->c:I

    iget v3, v0, Lwd/u;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object v4

    iput-object v4, p1, Lwd/g;->a:Lwd/u;

    iget-object v4, p0, Lwd/g;->a:Lwd/u;

    if-nez v4, :cond_6

    iput-object v0, p0, Lwd/g;->a:Lwd/u;

    iput-object v0, v0, Lwd/u;->g:Lwd/u;

    iput-object v0, v0, Lwd/u;->f:Lwd/u;

    goto :goto_6

    :cond_6
    iget-object v4, v4, Lwd/u;->g:Lwd/u;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lwd/u;->b(Lwd/u;)V

    iget-object v4, v0, Lwd/u;->g:Lwd/u;

    if-eq v4, v0, :cond_a

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-boolean v4, v4, Lwd/u;->e:Z

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    iget v4, v0, Lwd/u;->c:I

    iget v5, v0, Lwd/u;->b:I

    sub-int/2addr v4, v5

    iget-object v5, v0, Lwd/u;->g:Lwd/u;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v5, v5, Lwd/u;->c:I

    rsub-int v5, v5, 0x2000

    iget-object v6, v0, Lwd/u;->g:Lwd/u;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-boolean v6, v6, Lwd/u;->d:Z

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, v0, Lwd/u;->g:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v1, Lwd/u;->b:I

    :goto_5
    add-int/2addr v5, v1

    if-le v4, v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object v1, v0, Lwd/u;->g:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v4}, Lwd/u;->d(Lwd/u;I)V

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    :goto_6
    iget-wide v0, p1, Lwd/g;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lwd/g;->b:J

    iget-wide v0, p0, Lwd/g;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    sub-long/2addr p2, v2

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot compact"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_7
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final S(I)Lwd/j;
    .locals 7

    if-nez p1, :cond_0

    sget-object p0, Lwd/j;->d:Lwd/j;

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, LG5/s2;->c(JJJ)V

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v4, v0, Lwd/u;->c:I

    iget v5, v0, Lwd/u;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lwd/u;->f:Lwd/u;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "s.limit == s.pos"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    iget-object p0, p0, Lwd/g;->a:Lwd/u;

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v5, p0, Lwd/u;->a:[B

    aput-object v5, v0, v4

    iget v5, p0, Lwd/u;->c:I

    iget v6, p0, Lwd/u;->b:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v4

    add-int v5, v4, v3

    iget v6, p0, Lwd/u;->b:I

    aput v6, v2, v5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lwd/u;->d:Z

    add-int/2addr v4, v5

    iget-object p0, p0, Lwd/u;->f:Lwd/u;

    goto :goto_1

    :cond_3
    new-instance p0, Lwd/w;

    invoke-direct {p0, v0, v2}, Lwd/w;-><init>([[B[I)V

    :goto_2
    return-object p0
.end method

.method public final T(I)Lwd/u;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    iget-object v1, p0, Lwd/g;->a:Lwd/u;

    if-nez v1, :cond_0

    invoke-static {}, Lwd/v;->b()Lwd/u;

    move-result-object p1

    iput-object p1, p0, Lwd/g;->a:Lwd/u;

    iput-object p1, p1, Lwd/u;->g:Lwd/u;

    iput-object p1, p1, Lwd/u;->f:Lwd/u;

    goto :goto_1

    :cond_0
    iget-object p0, v1, Lwd/u;->g:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, p0, Lwd/u;->c:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_2

    iget-boolean p1, p0, Lwd/u;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lwd/v;->b()Lwd/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwd/u;->b(Lwd/u;)V

    :goto_1
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unexpected capacity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final V(Lwd/j;)V
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lwd/j;->n(Lwd/g;I)V

    return-void
.end method

.method public final W([BII)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwd/g;->T(I)Lwd/u;

    move-result-object v0

    sub-int v1, p3, p2

    iget v2, v0, Lwd/u;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Lwd/u;->c:I

    add-int v3, p2, v1

    iget-object v4, v0, Lwd/u;->a:[B

    invoke-static {v2, p2, v3, p1, v4}, Lfb/l;->h(III[B[B)V

    iget p2, v0, Lwd/u;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lwd/u;->c:I

    move p2, v3

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lwd/g;->b:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lwd/g;->b:J

    return-void
.end method

.method public final Y(Lwd/g;)J
    .locals 4

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1, p0, v0, v1}, Lwd/g;->R(Lwd/g;J)V

    :cond_0
    return-wide v0
.end method

.method public final Z()[B
    .locals 2

    iget-wide v0, p0, Lwd/g;->b:J

    invoke-virtual {p0, v0, v1}, Lwd/g;->t(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 2

    iget-wide v0, p0, Lwd/g;->b:J

    invoke-virtual {p0, v0, v1}, Lwd/g;->K(J)V

    return-void
.end method

.method public final b()Lwd/g;
    .locals 6

    new-instance v0, Lwd/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lwd/u;->c()Lwd/u;

    move-result-object v2

    iput-object v2, v0, Lwd/g;->a:Lwd/u;

    iput-object v2, v2, Lwd/u;->g:Lwd/u;

    iput-object v2, v2, Lwd/u;->f:Lwd/u;

    iget-object v3, v1, Lwd/u;->f:Lwd/u;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lwd/u;->g:Lwd/u;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lwd/u;->c()Lwd/u;

    move-result-object v5

    invoke-virtual {v4, v5}, Lwd/u;->b(Lwd/u;)V

    iget-object v3, v3, Lwd/u;->f:Lwd/u;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lwd/g;->b:J

    iput-wide v1, v0, Lwd/g;->b:J

    :goto_1
    return-object v0
.end method

.method public final b0(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwd/g;->T(I)Lwd/u;

    move-result-object v0

    iget v1, v0, Lwd/u;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lwd/u;->c:I

    int-to-byte p1, p1

    iget-object v0, v0, Lwd/u;->a:[B

    aput-byte p1, v0, v1

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    return-void
.end method

.method public final c()J
    .locals 5

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lwd/g;->a:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lwd/u;->g:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, p0, Lwd/u;->c:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_1

    iget-boolean v3, p0, Lwd/u;->e:Z

    if-eqz v3, :cond_1

    iget p0, p0, Lwd/u;->b:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public final bridge synthetic c0(I)Lwd/h;
    .locals 0

    invoke-virtual {p0, p1}, Lwd/g;->b0(I)V

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lwd/g;->b()Lwd/g;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(Lwd/g;JJ)V
    .locals 7

    const-string v0, "out"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lwd/g;->b:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget-wide v2, p1, Lwd/g;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lwd/g;->b:J

    iget-object p0, p0, Lwd/g;->a:Lwd/u;

    :goto_0
    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, p0, Lwd/u;->c:I

    iget v3, p0, Lwd/u;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    sub-long/2addr p2, v2

    iget-object p0, p0, Lwd/u;->f:Lwd/u;

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v2, p4, v0

    if-lez v2, :cond_3

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lwd/u;->c()Lwd/u;

    move-result-object v2

    iget v3, v2, Lwd/u;->b:I

    long-to-int p2, p2

    add-int/2addr v3, p2

    iput v3, v2, Lwd/u;->b:I

    long-to-int p2, p4

    add-int/2addr v3, p2

    iget p2, v2, Lwd/u;->c:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v2, Lwd/u;->c:I

    iget-object p2, p1, Lwd/g;->a:Lwd/u;

    if-nez p2, :cond_2

    iput-object v2, v2, Lwd/u;->g:Lwd/u;

    iput-object v2, v2, Lwd/u;->f:Lwd/u;

    iput-object v2, p1, Lwd/g;->a:Lwd/u;

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lwd/u;->g:Lwd/u;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lwd/u;->b(Lwd/u;)V

    :goto_2
    iget p2, v2, Lwd/u;->c:I

    iget p3, v2, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    iget-object p0, p0, Lwd/u;->f:Lwd/u;

    move-wide p2, v0

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method public final d0(J)V
    .locals 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lwd/g;->b0(I)V

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-wide/32 v4, 0x5f5e100

    cmp-long v4, p1, v4

    const/16 v5, 0xa

    if-gez v4, :cond_a

    const-wide/16 v6, 0x2710

    cmp-long v4, p1, v6

    if-gez v4, :cond_6

    const-wide/16 v6, 0x64

    cmp-long v4, p1, v6

    if-gez v4, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x4

    goto/16 :goto_1

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v3, p1, v3

    if-gez v3, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v3, p1, v3

    if-gez v3, :cond_7

    const/4 v3, 0x5

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    goto/16 :goto_1

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v3, p1, v3

    if-gez v3, :cond_9

    const/4 v3, 0x7

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_1

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v3, p1, v3

    if-gez v3, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, p1, v3

    if-gez v3, :cond_b

    const/16 v3, 0x9

    goto :goto_1

    :cond_b
    move v3, v5

    goto :goto_1

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v3, p1, v3

    if-gez v3, :cond_d

    const/16 v3, 0xb

    goto :goto_1

    :cond_d
    const/16 v3, 0xc

    goto :goto_1

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_f

    const/16 v3, 0xd

    goto :goto_1

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_10

    const/16 v3, 0xe

    goto :goto_1

    :cond_10
    const/16 v3, 0xf

    goto :goto_1

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_12

    const/16 v3, 0x10

    goto :goto_1

    :cond_12
    const/16 v3, 0x11

    goto :goto_1

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v3, p1, v3

    if-gez v3, :cond_14

    const/16 v3, 0x12

    goto :goto_1

    :cond_14
    const/16 v3, 0x13

    :goto_1
    if-eqz v2, :cond_15

    add-int/lit8 v3, v3, 0x1

    :cond_15
    invoke-virtual {p0, v3}, Lwd/g;->T(I)Lwd/u;

    move-result-object v4

    iget v6, v4, Lwd/u;->c:I

    add-int/2addr v6, v3

    :goto_2
    cmp-long v7, p1, v0

    iget-object v8, v4, Lwd/u;->a:[B

    if-eqz v7, :cond_16

    int-to-long v9, v5

    rem-long v11, p1, v9

    long-to-int v7, v11

    add-int/lit8 v6, v6, -0x1

    sget-object v11, Lxd/a;->a:[B

    aget-byte v7, v11, v7

    aput-byte v7, v8, v6

    div-long/2addr p1, v9

    goto :goto_2

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v6, v6, -0x1

    const/16 p1, 0x2d

    aput-byte p1, v8, v6

    :cond_17
    iget p1, v4, Lwd/u;->c:I

    add-int/2addr p1, v3

    iput p1, v4, Lwd/u;->c:I

    iget-wide p1, p0, Lwd/g;->b:J

    int-to-long v0, v3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lwd/g;->b:J

    :goto_3
    return-void
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_1
    instance-of v3, v1, Lwd/g;

    if-nez v3, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_2
    iget-wide v5, v0, Lwd/g;->b:J

    check-cast v1, Lwd/g;

    iget-wide v7, v1, Lwd/g;->b:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lwd/g;->a:Lwd/u;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, v1, Lwd/g;->a:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v5, v3, Lwd/u;->b:I

    iget v6, v1, Lwd/u;->b:I

    move-wide v9, v7

    :goto_2
    iget-wide v11, v0, Lwd/g;->b:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    iget v11, v3, Lwd/u;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lwd/u;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_3
    cmp-long v15, v13, v11

    if-gez v15, :cond_6

    add-int/lit8 v15, v5, 0x1

    iget-object v2, v3, Lwd/u;->a:[B

    aget-byte v2, v2, v5

    add-int/lit8 v5, v6, 0x1

    iget-object v4, v1, Lwd/u;->a:[B

    aget-byte v4, v4, v6

    if-eq v2, v4, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    move v6, v5

    move v5, v15

    goto :goto_3

    :cond_6
    iget v2, v3, Lwd/u;->c:I

    if-ne v5, v2, :cond_7

    iget-object v2, v3, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v3, v2, Lwd/u;->b:I

    move v5, v3

    move-object v3, v2

    :cond_7
    iget v2, v1, Lwd/u;->c:I

    if-ne v6, v2, :cond_8

    iget-object v1, v1, Lwd/u;->f:Lwd/u;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, v1, Lwd/u;->b:I

    move v6, v2

    :cond_8
    add-long/2addr v9, v11

    goto :goto_2

    :goto_4
    return v2
.end method

.method public final f(J)B
    .locals 6

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, LG5/s2;->c(JJJ)V

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lwd/g;->b:J

    sub-long v3, v1, p1

    cmp-long p0, v3, p1

    if-gez p0, :cond_1

    :goto_0
    cmp-long p0, v1, p1

    if-lez p0, :cond_0

    iget-object v0, v0, Lwd/u;->g:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p0, v0, Lwd/u;->c:I

    iget v3, v0, Lwd/u;->b:I

    sub-int/2addr p0, v3

    int-to-long v3, p0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget p0, v0, Lwd/u;->b:I

    int-to-long v3, p0

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p0, v3

    iget-object p1, v0, Lwd/u;->a:[B

    aget-byte p0, p1, p0

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget p0, v0, Lwd/u;->c:I

    iget v3, v0, Lwd/u;->b:I

    sub-int/2addr p0, v3

    int-to-long v4, p0

    add-long/2addr v4, v1

    cmp-long p0, v4, p1

    if-gtz p0, :cond_2

    iget-object v0, v0, Lwd/u;->f:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide v1, v4

    goto :goto_1

    :cond_2
    int-to-long v3, v3

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    long-to-int p0, v3

    iget-object p1, v0, Lwd/u;->a:[B

    aget-byte p0, p1, p0

    :goto_2
    return p0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    throw p0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g()Lwd/g;
    .locals 0

    return-object p0
.end method

.method public final g0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lwd/g;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(BJJ)J
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_b

    cmp-long v2, p2, p4

    if-gtz v2, :cond_b

    iget-wide v2, p0, Lwd/g;->b:J

    cmp-long v4, p4, v2

    if-lez v4, :cond_0

    move-wide p4, v2

    :cond_0
    cmp-long v4, p2, p4

    const-wide/16 v5, -0x1

    if-nez v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p0, p0, Lwd/g;->a:Lwd/u;

    if-nez p0, :cond_2

    goto/16 :goto_6

    :cond_2
    sub-long v7, v2, p2

    cmp-long v4, v7, p2

    if-gez v4, :cond_6

    :goto_0
    cmp-long v0, v2, p2

    if-lez v0, :cond_3

    iget-object p0, p0, Lwd/u;->g:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, p0, Lwd/u;->c:I

    iget v1, p0, Lwd/u;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v0, v2, p4

    if-gez v0, :cond_a

    iget v0, p0, Lwd/u;->c:I

    int-to-long v0, v0

    iget v4, p0, Lwd/u;->b:I

    int-to-long v7, v4

    add-long/2addr v7, p4

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lwd/u;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p2

    sub-long/2addr v7, v2

    long-to-int p2, v7

    :goto_2
    if-ge p2, v0, :cond_5

    iget-object p3, p0, Lwd/u;->a:[B

    aget-byte p3, p3, p2

    if-ne p3, p1, :cond_4

    iget p0, p0, Lwd/u;->b:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v5, p0, v2

    goto :goto_6

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    iget p2, p0, Lwd/u;->c:I

    iget p3, p0, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    iget-object p0, p0, Lwd/u;->f:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v2

    goto :goto_1

    :cond_6
    :goto_3
    iget v2, p0, Lwd/u;->c:I

    iget v3, p0, Lwd/u;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v4, v2, p2

    if-gtz v4, :cond_7

    iget-object p0, p0, Lwd/u;->f:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_3

    :cond_7
    :goto_4
    cmp-long v2, v0, p4

    if-gez v2, :cond_a

    iget v2, p0, Lwd/u;->c:I

    int-to-long v2, v2

    iget v4, p0, Lwd/u;->b:I

    int-to-long v7, v4

    add-long/2addr v7, p4

    sub-long/2addr v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lwd/u;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    sub-long/2addr v3, v0

    long-to-int p2, v3

    :goto_5
    if-ge p2, v2, :cond_9

    iget-object p3, p0, Lwd/u;->a:[B

    aget-byte p3, p3, p2

    if-ne p3, p1, :cond_8

    iget p0, p0, Lwd/u;->b:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v5, p0, v0

    goto :goto_6

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    iget p2, p0, Lwd/u;->c:I

    iget p3, p0, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object p0, p0, Lwd/u;->f:Lwd/u;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_4

    :cond_a
    :goto_6
    return-wide v5

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lwd/g;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " fromIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " toIndex="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lwd/u;->b:I

    iget v3, v0, Lwd/u;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lwd/u;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lwd/u;->f:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lwd/g;->a:Lwd/u;

    if-ne v0, v2, :cond_1

    move p0, v1

    :goto_1
    return p0
.end method

.method public final bridge synthetic i0([BII)Lwd/h;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lwd/g;->W([BII)V

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lwd/j;J)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "bytes"

    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lwd/j;->a:[B

    array-length v4, v1

    if-lez v4, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_9

    iget-object v6, v0, Lwd/g;->a:Lwd/u;

    if-nez v6, :cond_1

    :cond_0
    const-wide/16 v7, -0x1

    goto/16 :goto_6

    :cond_1
    iget-wide v9, v0, Lwd/g;->b:J

    sub-long v11, v9, v2

    cmp-long v11, v11, v2

    const-wide/16 v12, 0x1

    const/4 v14, 0x0

    if-gez v11, :cond_5

    :goto_0
    cmp-long v4, v9, v2

    if-lez v4, :cond_2

    iget-object v6, v6, Lwd/u;->g:Lwd/u;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v4, v6, Lwd/u;->c:I

    iget v5, v6, Lwd/u;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v9, v4

    goto :goto_0

    :cond_2
    aget-byte v4, v1, v14

    array-length v5, v1

    iget-wide v14, v0, Lwd/g;->b:J

    int-to-long v7, v5

    sub-long/2addr v14, v7

    add-long/2addr v14, v12

    :goto_1
    cmp-long v0, v9, v14

    if-gez v0, :cond_0

    iget v0, v6, Lwd/u;->c:I

    iget v7, v6, Lwd/u;->b:I

    int-to-long v7, v7

    add-long/2addr v7, v14

    sub-long/2addr v7, v9

    int-to-long v11, v0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    iget v7, v6, Lwd/u;->b:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    sub-long/2addr v7, v9

    long-to-int v2, v7

    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v3, v6, Lwd/u;->a:[B

    aget-byte v3, v3, v2

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-static {v6, v3, v1, v5}, Lxd/a;->a(Lwd/u;I[BI)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, v6, Lwd/u;->b:I

    sub-int/2addr v2, v0

    int-to-long v0, v2

    add-long v7, v0, v9

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v0, v6, Lwd/u;->c:I

    iget v2, v6, Lwd/u;->b:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v9, v2

    iget-object v6, v6, Lwd/u;->f:Lwd/u;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide v2, v9

    goto :goto_1

    :cond_5
    :goto_3
    iget v7, v6, Lwd/u;->c:I

    iget v8, v6, Lwd/u;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v4

    cmp-long v9, v7, v2

    if-gtz v9, :cond_6

    iget-object v6, v6, Lwd/u;->f:Lwd/u;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide v4, v7

    goto :goto_3

    :cond_6
    aget-byte v7, v1, v14

    array-length v8, v1

    iget-wide v9, v0, Lwd/g;->b:J

    int-to-long v14, v8

    sub-long/2addr v9, v14

    add-long/2addr v9, v12

    :goto_4
    cmp-long v0, v4, v9

    if-gez v0, :cond_0

    iget v0, v6, Lwd/u;->c:I

    iget v11, v6, Lwd/u;->b:I

    int-to-long v11, v11

    add-long/2addr v11, v9

    sub-long/2addr v11, v4

    int-to-long v13, v0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v0, v11

    iget v11, v6, Lwd/u;->b:I

    int-to-long v11, v11

    add-long/2addr v11, v2

    sub-long/2addr v11, v4

    long-to-int v2, v11

    :goto_5
    if-ge v2, v0, :cond_8

    iget-object v3, v6, Lwd/u;->a:[B

    aget-byte v3, v3, v2

    if-ne v3, v7, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-static {v6, v3, v1, v8}, Lxd/a;->a(Lwd/u;I[BI)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v0, v6, Lwd/u;->b:I

    sub-int/2addr v2, v0

    int-to-long v0, v2

    add-long v7, v0, v4

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iget v0, v6, Lwd/u;->c:I

    iget v2, v6, Lwd/u;->b:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v4, v2

    iget-object v6, v6, Lwd/u;->f:Lwd/u;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide v2, v4

    goto :goto_4

    :goto_6
    return-wide v7

    :cond_9
    const-string v0, "fromIndex < 0: "

    invoke-static {v2, v3, v0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Lwd/j;J)J
    .locals 11

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_13

    iget-object v2, p0, Lwd/g;->a:Lwd/u;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-wide v5, p0, Lwd/g;->b:J

    sub-long v7, v5, p2

    cmp-long v7, v7, p2

    const/4 v8, 0x1

    iget-object p1, p1, Lwd/j;->a:[B

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-gez v7, :cond_9

    :goto_0
    cmp-long v0, v5, p2

    if-lez v0, :cond_1

    iget-object v2, v2, Lwd/u;->g:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v0, v2, Lwd/u;->c:I

    iget v1, v2, Lwd/u;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-ne v0, v9, :cond_5

    aget-byte v0, p1, v10

    aget-byte p1, p1, v8

    :goto_1
    iget-wide v7, p0, Lwd/g;->b:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_12

    iget v1, v2, Lwd/u;->b:I

    int-to-long v7, v1

    add-long/2addr v7, p2

    sub-long/2addr v7, v5

    long-to-int p2, v7

    iget p3, v2, Lwd/u;->c:I

    :goto_2
    if-ge p2, p3, :cond_4

    iget-object v1, v2, Lwd/u;->a:[B

    aget-byte v1, v1, p2

    if-eq v1, v0, :cond_3

    if-ne v1, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget p0, v2, Lwd/u;->b:I

    :goto_4
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v3, p0, v5

    goto/16 :goto_10

    :cond_4
    iget p2, v2, Lwd/u;->c:I

    iget p3, v2, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v5

    goto :goto_1

    :cond_5
    :goto_5
    iget-wide v0, p0, Lwd/g;->b:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_12

    iget v0, v2, Lwd/u;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    sub-long/2addr v0, v5

    long-to-int p2, v0

    iget p3, v2, Lwd/u;->c:I

    :goto_6
    if-ge p2, p3, :cond_8

    iget-object v0, v2, Lwd/u;->a:[B

    aget-byte v0, v0, p2

    array-length v1, p1

    move v7, v10

    :goto_7
    if-ge v7, v1, :cond_7

    aget-byte v8, p1, v7

    if-ne v0, v8, :cond_6

    iget p0, v2, Lwd/u;->b:I

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    iget p2, v2, Lwd/u;->c:I

    iget p3, v2, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v5, p2

    iget-object v2, v2, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v5

    goto :goto_5

    :cond_9
    :goto_8
    iget v5, v2, Lwd/u;->c:I

    iget v6, v2, Lwd/u;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gtz v7, :cond_a

    iget-object v2, v2, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide v0, v5

    goto :goto_8

    :cond_a
    array-length v5, p1

    if-ne v5, v9, :cond_e

    aget-byte v5, p1, v10

    aget-byte p1, p1, v8

    :goto_9
    iget-wide v6, p0, Lwd/g;->b:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_12

    iget v6, v2, Lwd/u;->b:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    sub-long/2addr v6, v0

    long-to-int p2, v6

    iget p3, v2, Lwd/u;->c:I

    :goto_a
    if-ge p2, p3, :cond_d

    iget-object v6, v2, Lwd/u;->a:[B

    aget-byte v6, v6, p2

    if-eq v6, v5, :cond_c

    if-ne v6, p1, :cond_b

    goto :goto_b

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_c
    :goto_b
    iget p0, v2, Lwd/u;->b:I

    :goto_c
    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long v3, p0, v0

    goto :goto_10

    :cond_d
    iget p2, v2, Lwd/u;->c:I

    iget p3, v2, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_9

    :cond_e
    :goto_d
    iget-wide v5, p0, Lwd/g;->b:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_12

    iget v5, v2, Lwd/u;->b:I

    int-to-long v5, v5

    add-long/2addr v5, p2

    sub-long/2addr v5, v0

    long-to-int p2, v5

    iget p3, v2, Lwd/u;->c:I

    :goto_e
    if-ge p2, p3, :cond_11

    iget-object v5, v2, Lwd/u;->a:[B

    aget-byte v5, v5, p2

    array-length v6, p1

    move v7, v10

    :goto_f
    if-ge v7, v6, :cond_10

    aget-byte v8, p1, v7

    if-ne v5, v8, :cond_f

    iget p0, v2, Lwd/u;->b:I

    goto :goto_c

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_11
    iget p2, v2, Lwd/u;->c:I

    iget p3, v2, Lwd/u;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v0, p2

    iget-object v2, v2, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_d

    :cond_12
    :goto_10
    return-wide v3

    :cond_13
    const-string p0, "fromIndex < 0: "

    invoke-static {p2, p3, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k0(J)V
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lwd/g;->b0(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const/4 v1, 0x3

    int-to-long v1, v1

    add-long/2addr v8, v1

    int-to-long v1, v4

    div-long/2addr v8, v1

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v3, v2, Lwd/u;->c:I

    add-int v5, v3, v1

    sub-int/2addr v5, v0

    :goto_0
    if-lt v5, v3, :cond_1

    sget-object v0, Lxd/a;->a:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v0, v0, v6

    iget-object v6, v2, Lwd/u;->a:[B

    aput-byte v0, v6, v5

    ushr-long/2addr p1, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget p1, v2, Lwd/u;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lwd/u;->c:I

    iget-wide p1, p0, Lwd/g;->b:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lwd/g;->b:J

    :goto_1
    return-void
.end method

.method public final l0()Lwd/j;
    .locals 2

    iget-wide v0, p0, Lwd/g;->b:J

    invoke-virtual {p0, v0, v1}, Lwd/g;->v(J)Lwd/j;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lwd/q;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lxd/a;->c(Lwd/g;Lwd/q;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lwd/q;->a:[Lwd/j;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lwd/g;->K(J)V

    :goto_0
    return v0
.end method

.method public final m0(I)V
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lwd/g;->T(I)Lwd/u;

    move-result-object v1

    iget v2, v1, Lwd/u;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iget-object v5, v1, Lwd/u;->a:[B

    aput-byte v4, v5, v2

    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v2, 0x3

    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/2addr v2, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v5, v3

    iput v2, v1, Lwd/u;->c:I

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    return-void
.end method

.method public final o([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lwd/u;->c:I

    iget v2, v0, Lwd/u;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v1, v0, Lwd/u;->b:I

    add-int v2, v1, p3

    iget-object v3, v0, Lwd/u;->a:[B

    invoke-static {p2, v1, v2, v3, p1}, Lfb/l;->h(III[B[B)V

    iget p1, v0, Lwd/u;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lwd/u;->b:I

    iget-wide v1, p0, Lwd/g;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lwd/g;->b:J

    iget p2, v0, Lwd/u;->c:I

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object p1

    iput-object p1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    :cond_1
    move p0, p3

    :goto_0
    return p0
.end method

.method public final o0(Lwd/z;)J
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lwd/z;->read(Lwd/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final q()B
    .locals 8

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v0, Lwd/u;->b:I

    iget v2, v0, Lwd/u;->c:I

    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lwd/u;->a:[B

    aget-byte v1, v4, v1

    iget-wide v4, p0, Lwd/g;->b:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lwd/g;->b:J

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object v2

    iput-object v2, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    goto :goto_0

    :cond_0
    iput v3, v0, Lwd/u;->b:I

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final r()Lwd/g;
    .locals 0

    return-object p0
.end method

.method public final r0(Ljava/lang/String;IILjava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_3

    if-lt p3, p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    sget-object v0, LKc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p1}, Lwd/g;->s0(IILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lwd/g;->W([BII)V

    return-void

    :cond_1
    const-string p0, "endIndex > string.length: "

    const-string p2, " > "

    invoke-static {p3, p0, p2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "endIndex < beginIndex: "

    const-string p1, " < "

    invoke-static {p3, p0, p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "beginIndex < 0: "

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwd/g;->a:Lwd/u;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lwd/u;->c:I

    iget v3, v0, Lwd/u;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lwd/u;->a:[B

    iget v3, v0, Lwd/u;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lwd/u;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lwd/u;->b:I

    iget-wide v2, p0, Lwd/g;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lwd/g;->b:J

    iget v2, v0, Lwd/u;->c:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object p1

    iput-object p1, p0, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    :cond_1
    return v1
.end method

.method public final read(Lwd/g;J)J
    .locals 4

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lwd/g;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    move-wide p2, v2

    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lwd/g;->R(Lwd/g;J)V

    move-wide p0, p2

    :goto_0
    return-wide p0

    :cond_2
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s0(IILjava/lang/String;)V
    .locals 9

    const-string v0, "string"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    :goto_0
    if-ge p1, p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v3, v2, Lwd/u;->c:I

    sub-int/2addr v3, p1

    rsub-int v4, v3, 0x2000

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    add-int/2addr p1, v3

    int-to-byte v0, v0

    iget-object v6, v2, Lwd/u;->a:[B

    aput-byte v0, v6, p1

    :goto_1
    move p1, v5

    if-ge p1, v4, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v5, p1, 0x1

    add-int/2addr p1, v3

    int-to-byte v0, v0

    aput-byte v0, v6, p1

    goto :goto_1

    :cond_0
    add-int/2addr v3, p1

    iget v0, v2, Lwd/u;->c:I

    sub-int/2addr v3, v0

    add-int/2addr v0, v3

    iput v0, v2, Lwd/u;->c:I

    iget-wide v0, p0, Lwd/g;->b:J

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lwd/g;->T(I)Lwd/u;

    move-result-object v3

    iget v4, v3, Lwd/u;->c:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    iget-object v6, v3, Lwd/u;->a:[B

    aput-byte v5, v6, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v5

    add-int/2addr v4, v2

    iput v4, v3, Lwd/u;->c:I

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_4

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    const v5, 0xdbff

    if-gt v0, v5, :cond_5

    const v5, 0xdc00

    if-gt v5, v4, :cond_5

    const v5, 0xe000

    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v2, v4, 0x3ff

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lwd/g;->T(I)Lwd/u;

    move-result-object v4

    iget v5, v4, Lwd/u;->c:I

    shr-int/lit8 v6, v0, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    iget-object v7, v4, Lwd/u;->a:[B

    aput-byte v6, v7, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v6, v5, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v6, v5, 0x3

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v6

    add-int/2addr v5, v2

    iput v5, v4, Lwd/u;->c:I

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lwd/g;->b0(I)V

    move p1, v2

    goto/16 :goto_0

    :cond_6
    :goto_4
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lwd/g;->T(I)Lwd/u;

    move-result-object v4

    iget v5, v4, Lwd/u;->c:I

    shr-int/lit8 v6, v0, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    iget-object v7, v4, Lwd/u;->a:[B

    aput-byte v6, v7, v5

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v3, v8

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v7, v6

    add-int/lit8 v3, v5, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v7, v3

    add-int/2addr v5, v2

    iput v5, v4, Lwd/u;->c:I

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwd/g;->b:J

    goto/16 :goto_2

    :cond_7
    return-void

    :cond_8
    const-string p0, "endIndex > string.length: "

    const-string p1, " > "

    invoke-static {p2, p0, p1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p0, "endIndex < beginIndex: "

    const-string p3, " < "

    invoke-static {p2, p0, p1, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p0, "beginIndex < 0: "

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(J)[B
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lwd/g;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    long-to-int p1, p1

    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    sub-int v1, p1, v0

    invoke-virtual {p0, p2, v0, v1}, Lwd/g;->o([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-object p2

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "byteCount: "

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    sget-object p0, Lwd/B;->d:Lwd/A;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lwd/g;->S(I)Lwd/j;

    move-result-object p0

    invoke-virtual {p0}, Lwd/j;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lwd/g;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v(J)Lwd/j;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lwd/g;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lwd/g;->S(I)Lwd/j;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lwd/g;->K(J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lwd/j;

    invoke-virtual {p0, p1, p2}, Lwd/g;->t(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lwd/j;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "byteCount: "

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lwd/g;->s0(IILjava/lang/String;)V

    return-void
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v3, v2, Lwd/u;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lwd/u;->a:[B

    iget v5, v2, Lwd/u;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lwd/u;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lwd/u;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lwd/g;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lwd/g;->b:J

    return v0
.end method

.method public final x0(Lwd/j;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lwd/g;->k(Lwd/j;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final y0()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lwd/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwd/f;-><init>(Lwd/i;I)V

    return-object v0
.end method

.method public final z0(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x80

    if-ge v1, v9, :cond_0

    invoke-virtual/range {p0 .. p1}, Lwd/g;->b0(I)V

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x800

    const/16 v11, 0x3f

    if-ge v1, v10, :cond_1

    invoke-virtual {v0, v7}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v3, v2, Lwd/u;->c:I

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    iget-object v5, v2, Lwd/u;->a:[B

    aput-byte v4, v5, v3

    add-int/2addr v8, v3

    and-int/2addr v1, v11

    or-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v5, v8

    add-int/2addr v3, v7

    iput v3, v2, Lwd/u;->c:I

    iget-wide v1, v0, Lwd/g;->b:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, v0, Lwd/g;->b:J

    goto :goto_0

    :cond_1
    const v10, 0xd800

    if-gt v10, v1, :cond_2

    const v10, 0xe000

    if-ge v1, v10, :cond_2

    invoke-virtual {v0, v11}, Lwd/g;->b0(I)V

    goto :goto_0

    :cond_2
    const/high16 v10, 0x10000

    if-ge v1, v10, :cond_3

    invoke-virtual {v0, v4}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v3, v2, Lwd/u;->c:I

    shr-int/lit8 v5, v1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    iget-object v10, v2, Lwd/u;->a:[B

    aput-byte v5, v10, v3

    add-int/2addr v8, v3

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v10, v8

    add-int/2addr v7, v3

    and-int/2addr v1, v11

    or-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v10, v7

    add-int/2addr v3, v4

    iput v3, v2, Lwd/u;->c:I

    iget-wide v1, v0, Lwd/g;->b:J

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lwd/g;->b:J

    goto :goto_0

    :cond_3
    const v10, 0x10ffff

    if-gt v1, v10, :cond_4

    invoke-virtual {v0, v3}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v5, v2, Lwd/u;->c:I

    shr-int/lit8 v10, v1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    iget-object v12, v2, Lwd/u;->a:[B

    aput-byte v10, v12, v5

    add-int/2addr v8, v5

    shr-int/lit8 v10, v1, 0xc

    and-int/2addr v10, v11

    or-int/2addr v10, v9

    int-to-byte v10, v10

    aput-byte v10, v12, v8

    add-int/2addr v7, v5

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v11

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v12, v7

    add-int/2addr v4, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v12, v4

    add-int/2addr v5, v3

    iput v5, v2, Lwd/u;->c:I

    iget-wide v1, v0, Lwd/g;->b:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, v0, Lwd/g;->b:J

    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected code point: 0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    sget-object v10, Lxd/b;->a:[C

    shr-int/lit8 v11, v1, 0x1c

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v10, v11

    shr-int/lit8 v12, v1, 0x18

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v10, v12

    shr-int/lit8 v13, v1, 0x14

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v10, v13

    shr-int/lit8 v14, v1, 0x10

    and-int/lit8 v14, v14, 0xf

    aget-char v14, v10, v14

    shr-int/lit8 v15, v1, 0xc

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v10, v15

    shr-int/lit8 v16, v1, 0x8

    and-int/lit8 v16, v16, 0xf

    aget-char v16, v10, v16

    shr-int/lit8 v17, v1, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v17, v10, v17

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v10, v1

    new-array v10, v5, [C

    aput-char v11, v10, v2

    aput-char v12, v10, v8

    aput-char v13, v10, v7

    aput-char v14, v10, v4

    aput-char v15, v10, v3

    const/4 v3, 0x5

    aput-char v16, v10, v3

    aput-char v17, v10, v6

    const/4 v3, 0x7

    aput-char v1, v10, v3

    :goto_1
    if-ge v2, v5, :cond_5

    aget-char v1, v10, v2

    const/16 v3, 0x30

    if-ne v1, v3, :cond_5

    add-int/2addr v2, v8

    goto :goto_1

    :cond_5
    const-string v1, "startIndex: "

    if-ltz v2, :cond_7

    if-gt v2, v5, :cond_6

    new-instance v1, Ljava/lang/String;

    sub-int/2addr v5, v2

    invoke-direct {v1, v10, v2, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, " > endIndex: 8"

    invoke-static {v2, v1, v3}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, ", endIndex: 8, size: 8"

    invoke-static {v2, v1, v3}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v1, "0"

    :goto_2
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
