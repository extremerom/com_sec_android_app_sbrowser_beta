.class public final Lcom/google/crypto/tink/shaded/protobuf/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;LN/h;)Z
    .locals 8

    invoke-virtual {p1}, LN/h;->e()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, LN/h;->s()I

    move-result p1

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/h0;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0

    :cond_1
    return v4

    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v0

    shl-int/2addr v1, v2

    or-int/lit8 v5, v1, 0x4

    :cond_3
    invoke-virtual {p1}, LN/h;->b()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/i0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_4
    invoke-virtual {p1}, LN/h;->e()I

    move-result p1

    if-ne v5, p1, :cond_5

    iput-boolean v4, v0, Lcom/google/crypto/tink/shaded/protobuf/h0;->e:Z

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/h0;

    or-int/lit8 p1, v1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return v3

    :cond_5
    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/G;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p1}, LN/h;->l()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/h0;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v4

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return v3

    :cond_7
    invoke-virtual {p1}, LN/h;->u()J

    move-result-wide v4

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/h0;

    shl-int/lit8 p1, v1, 0x3

    or-int/2addr p1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return v3

    :cond_8
    invoke-virtual {p1}, LN/h;->E()J

    move-result-wide v4

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/h0;

    shl-int/lit8 p1, v1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->c(ILjava/lang/Object;)V

    return v3
.end method

.method public static b()Lcom/google/crypto/tink/shaded/protobuf/h0;
    .locals 1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v0

    return-object v0
.end method
