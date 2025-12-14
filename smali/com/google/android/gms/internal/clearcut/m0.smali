.class public abstract Lcom/google/android/gms/internal/clearcut/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final b(Lcom/google/android/gms/internal/clearcut/m0;[BI)V
    .locals 2

    :try_start_0
    new-instance v0, LB3/c;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, LB3/c;->a:Ljava/lang/Object;

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/m0;->a(LB3/c;)V

    iget-object p0, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Did not write as much data as expected, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes remaining."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract a(LB3/c;)V
.end method

.method public final c()I
    .locals 14

    check-cast p0, Lcom/google/android/gms/internal/clearcut/w0;

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {v5}, LB3/c;->F(I)I

    move-result v4

    invoke-static {v0, v1}, LB3/c;->E(J)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v6

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    array-length v7, v4

    if-ge v1, v7, :cond_1

    aget-object v4, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/clearcut/l0;->f:[B

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->e:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x4

    invoke-static {v7}, LB3/c;->F(I)I

    move-result v7

    array-length v8, v4

    invoke-static {v8}, LB3/c;->G(I)I

    move-result v8

    array-length v4, v4

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    add-int/2addr v0, v8

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    const/4 v7, 0x6

    invoke-static {v7}, LB3/c;->F(I)I

    move-result v7

    array-length v8, v4

    invoke-static {v8}, LB3/c;->G(I)I

    move-result v8

    array-length v4, v4

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    add-int/2addr v0, v8

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->g:Ljava/lang/String;

    const-string v7, ""

    if-eqz v4, :cond_4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x8

    invoke-static {v8, v4}, LB3/c;->A(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_4
    iget v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->c:I

    const/16 v8, 0xa

    if-eqz v4, :cond_6

    const/16 v9, 0xb

    invoke-static {v9}, LB3/c;->F(I)I

    move-result v9

    if-ltz v4, :cond_5

    invoke-static {v4}, LB3/c;->G(I)I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v8

    :goto_2
    add-int/2addr v4, v9

    add-int/2addr v0, v4

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->h:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const/16 v9, 0xd

    invoke-static {v9, v4}, LB3/c;->A(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->i:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0xe

    invoke-static {v9, v4}, LB3/c;->A(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_8
    iget-wide v9, p0, Lcom/google/android/gms/internal/clearcut/w0;->j:J

    const-wide/32 v11, 0x2bf20

    cmp-long v4, v9, v11

    if-eqz v4, :cond_9

    const/16 v4, 0xf

    invoke-static {v4}, LB3/c;->F(I)I

    move-result v4

    shl-long v11, v9, v5

    const/16 v13, 0x3f

    shr-long/2addr v9, v13

    xor-long/2addr v9, v11

    invoke-static {v9, v10}, LB3/c;->E(J)I

    move-result v9

    add-int/2addr v9, v4

    add-int/2addr v0, v9

    :cond_9
    iget-wide v9, p0, Lcom/google/android/gms/internal/clearcut/w0;->b:J

    cmp-long v2, v9, v2

    if-eqz v2, :cond_a

    const/16 v2, 0x11

    invoke-static {v2}, LB3/c;->F(I)I

    move-result v2

    invoke-static {v9, v10}, LB3/c;->E(J)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    const/16 v2, 0x12

    invoke-static {v2}, LB3/c;->F(I)I

    move-result v2

    array-length v3, v1

    invoke-static {v3}, LB3/c;->G(I)I

    move-result v3

    array-length v1, v1

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    if-eqz v1, :cond_e

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v6

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    array-length v3, v2

    if-ge v6, v3, :cond_d

    aget v2, v2, v6

    if-ltz v2, :cond_c

    invoke-static {v2}, LB3/c;->G(I)I

    move-result v2

    goto :goto_4

    :cond_c
    move v2, v8

    :goto_4
    add-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    add-int/2addr v0, v1

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->l:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v2, 0x18

    invoke-static {v2, v1}, LB3/c;->A(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/w0;->n:Z

    if-eqz p0, :cond_10

    const/16 p0, 0x19

    invoke-static {p0}, LB3/c;->F(I)I

    move-result p0

    add-int/2addr p0, v5

    add-int/2addr v0, p0

    :cond_10
    return v0
.end method

.method public final d()Lcom/google/android/gms/internal/clearcut/m0;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/m0;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/n0;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Error printing proto: "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3, p0, v2, v1}, Lcom/google/android/gms/internal/clearcut/l0;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object p0
.end method
