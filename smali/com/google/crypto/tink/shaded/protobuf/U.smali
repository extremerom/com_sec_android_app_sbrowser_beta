.class public abstract Lcom/google/crypto/tink/shaded/protobuf/U;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 3

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/N;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static B([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/A;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static C([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 3

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/N;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static D(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/A;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static E(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/N;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static F([BILcom/google/android/gms/internal/auth/A;)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static G(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 4

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_5

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_4

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_3

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    return p2

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static H(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 5

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_7

    const-string v1, ""

    if-nez v0, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int v2, p2, v0

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v3, p1, p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/U;->T([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move p2, v2

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_4

    if-nez v0, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int v2, p2, v0

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v3, p1, p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/U;->T([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->a()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->a()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static I([BILcom/google/android/gms/internal/auth/A;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1

    :cond_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/U;->K([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static J(I[BIILcom/google/crypto/tink/shaded/protobuf/h0;Lcom/google/android/gms/internal/auth/A;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/G;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v0

    and-int/lit8 v1, p0, -0x8

    or-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v4

    iget p2, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne p2, v1, :cond_2

    move v2, p2

    move p2, v4

    goto :goto_1

    :cond_2
    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->J(I[BIILcom/google/crypto/tink/shaded/protobuf/h0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    move v8, v2

    move v2, p2

    move p2, v8

    goto :goto_0

    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    if-ne v2, v1, :cond_4

    invoke-virtual {p4, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return p1

    :cond_b
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/G;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L(I[BILcom/google/android/gms/internal/auth/A;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    return v0

    :cond_0
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    return v1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v1

    if-ltz v1, :cond_2

    shl-int/lit8 p1, v1, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    return v0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p0, v1

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_0

    :cond_4
    iput p0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    return v0
.end method

.method public static M([BILcom/google/android/gms/internal/auth/A;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->L(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result p0

    return p0
.end method

.method public static N(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/A;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static O([BILcom/google/android/gms/internal/auth/A;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    iput-wide v1, p2, Lcom/google/android/gms/internal/auth/A;->b:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v1, p2, Lcom/google/android/gms/internal/auth/A;->b:J

    return p1
.end method

.method public static P(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/N;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static R(Lcom/google/crypto/tink/shaded/protobuf/h;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->g(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static S(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x20

    if-ge v1, p1, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p2, p3, Ljava/lang/String;

    const/16 v1, 0x22

    const-string v3, ": \""

    if-eqz p2, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/lang/String;

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/g;

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/g;-><init>([B)V

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->R(Lcom/google/crypto/tink/shaded/protobuf/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_5
    instance-of p2, p3, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz p2, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->R(Lcom/google/crypto/tink/shaded/protobuf/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    instance-of p2, p3, Lcom/google/crypto/tink/shaded/protobuf/z;

    const-string v1, "}"

    const-string v3, "\n"

    const-string v4, " {"

    if-eqz p2, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/crypto/tink/shaded/protobuf/z;

    add-int/lit8 p2, p1, 0x2

    invoke-static {p3, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->W(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v0, p1, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    if-eqz p2, :cond_a

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/util/Map$Entry;

    add-int/lit8 p2, p1, 0x2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "key"

    invoke-static {p0, p2, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "value"

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p2, v4, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v0, p1, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    return-void
.end method

.method public static W(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/StringBuilder;I)V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "get"

    if-ge v6, v4, :cond_1

    aget-object v8, v3, v6

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    const-string v8, "List"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    const-string v9, "OrBuilderList"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Ljava/util/List;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/U;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v9, p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/z;->h(Ljava/lang/reflect/Method;Lcom/google/crypto/tink/shaded/protobuf/a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, p2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v8, "Map"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/U;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/z;->h(Ljava/lang/reflect/Method;Lcom/google/crypto/tink/shaded/protobuf/a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "set"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const-string v3, "Bytes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    const-string v8, "has"

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v4, p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/z;->h(Ljava/lang/reflect/Method;Lcom/google/crypto/tink/shaded/protobuf/a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v6, :cond_11

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    xor-int/2addr v6, v10

    goto/16 :goto_4

    :cond_8
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_9

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_f

    :goto_3
    move v6, v10

    goto :goto_4

    :cond_9
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_a

    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-nez v6, :cond_f

    goto :goto_3

    :cond_a
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_b

    move-object v6, v4

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmpl-double v6, v8, v11

    if-nez v6, :cond_f

    goto :goto_3

    :cond_b
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_c

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_c
    instance-of v6, v4, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v6, :cond_d

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_d
    instance-of v6, v4, Lcom/google/crypto/tink/shaded/protobuf/a;

    if-eqz v6, :cond_e

    move-object v6, v4

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/a;

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/z;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/y;->GET_DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {v6, v8}, Lcom/google/crypto/tink/shaded/protobuf/z;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/z;

    if-ne v4, v6, :cond_f

    goto :goto_3

    :cond_e
    instance-of v6, v4, Ljava/lang/Enum;

    if-eqz v6, :cond_f

    move-object v6, v4

    check-cast v6, Ljava/lang/Enum;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    move v6, v5

    :goto_4
    if-nez v6, :cond_10

    goto :goto_5

    :cond_10
    move v10, v5

    goto :goto_5

    :cond_11
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/z;->h(Ljava/lang/reflect/Method;Lcom/google/crypto/tink/shaded/protobuf/a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_5
    if-eqz v10, :cond_2

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_12
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-eqz p0, :cond_13

    :goto_6
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    if-ge v5, v0, :cond_13

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->b:[I

    aget v0, v0, v5

    ushr-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    invoke-static {p1, p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/U;->V(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_13
    return-void
.end method

.method public static a(BBBB[CI)V
    .locals 2

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->S(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->S(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->S(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p4, p5

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->a()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static b(B)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(BB[CI)V
    .locals 1

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->S(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->a()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static d(BBB[CI)V
    .locals 2

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->S(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->S(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->a()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 7

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/d;

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget-wide v0, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/d;->i(Z)V

    :goto_1
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v5, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget-wide v5, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/d;->i(Z)V

    goto :goto_1

    :cond_3
    :goto_3
    return p2
.end method

.method public static g([BILcom/google/android/gms/internal/auth/A;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static h(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_7

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_6

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/2addr p2, v0

    :goto_1
    if-ge p2, p3, :cond_5

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1, v0, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_4

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_3

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return p2

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->d()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static i(I[B)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static j(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 3

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/m;

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->i(I[B)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(D)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(D)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static k(I[B)I
    .locals 2

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static l(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/A;

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static m(I[B)J
    .locals 7

    aget-byte v0, p1, p0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p0, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p0, p0, 0x7

    aget-byte p0, p1, p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static n(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 3

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/N;

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    add-int/lit8 p2, p2, 0x8

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    add-int/lit8 p2, v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static o(I[B)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static p(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p4, Lcom/google/crypto/tink/shaded/protobuf/u;

    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->o(I[B)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/crypto/tink/shaded/protobuf/u;->q(F)V

    add-int/lit8 p2, p2, 0x4

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2, p5}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/u;->q(F)V

    add-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public static q(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIIILcom/google/android/gms/internal/auth/A;)I
    .locals 8

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/V;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/V;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/V;->F(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->b(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1
.end method

.method public static r(Lcom/google/crypto/tink/shaded/protobuf/f0;I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 7

    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v0, v0, 0x4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/U;->q(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    iget-object v1, p6, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget v1, p6, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move v4, p4

    move v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/U;->q(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    iget-object v1, p6, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static s(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIILcom/google/android/gms/internal/auth/A;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/crypto/tink/shaded/protobuf/U;->L(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/auth/A;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/f0;->f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V

    invoke-interface {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/f0;->b(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static t(Lcom/google/crypto/tink/shaded/protobuf/f0;I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/crypto/tink/shaded/protobuf/U;->s(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_1

    invoke-static {p2, p3, p6}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/crypto/tink/shaded/protobuf/U;->s(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method

.method public static u([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 5

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/d;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget-wide v1, p3, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/d;->i(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static v([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/m;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget p3, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static w([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 1

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/A;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget p3, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static x([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/N;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget p3, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->i(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static y([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 1

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/u;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget p3, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/u;->q(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method

.method public static z([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/A;

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/A;->i(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->f()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract K([BII)Ljava/lang/String;
.end method

.method public abstract Q(Ljava/lang/String;[BII)I
.end method

.method public T([BII)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/U;->U([BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract U([BII)I
.end method
