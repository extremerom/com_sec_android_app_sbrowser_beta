.class public final Lcom/google/android/gms/internal/clearcut/w0;
.super Lcom/google/android/gms/internal/clearcut/m0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:[Lcom/google/android/gms/internal/clearcut/x0;

.field public e:[B

.field public f:[B

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:[B

.field public l:Ljava/lang/String;

.field public m:[I

.field public n:Z


# virtual methods
.method public final a(LB3/c;)V
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p1, v5, v6}, LB3/c;->B(II)V

    invoke-virtual {p1, v0, v1}, LB3/c;->D(J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/clearcut/l0;->f:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->e:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, LB3/c;->w(I[B)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    invoke-virtual {p1, v1, v4}, LB3/c;->w(I[B)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->g:Ljava/lang/String;

    const-string v4, ""

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x8

    invoke-virtual {p1, v7, v1}, LB3/c;->v(ILjava/lang/String;)V

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->c:I

    if-eqz v1, :cond_6

    const/16 v7, 0xb

    invoke-virtual {p1, v7, v6}, LB3/c;->B(II)V

    if-ltz v1, :cond_5

    invoke-virtual {p1, v1}, LB3/c;->z(I)V

    goto :goto_1

    :cond_5
    int-to-long v7, v1

    invoke-virtual {p1, v7, v8}, LB3/c;->D(J)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const/16 v7, 0xd

    invoke-virtual {p1, v7, v1}, LB3/c;->v(ILjava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v7, 0xe

    invoke-virtual {p1, v7, v1}, LB3/c;->v(ILjava/lang/String;)V

    :cond_8
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/w0;->j:J

    const-wide/32 v9, 0x2bf20

    cmp-long v1, v7, v9

    if-eqz v1, :cond_9

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v6}, LB3/c;->B(II)V

    shl-long v9, v7, v5

    const/16 v1, 0x3f

    shr-long/2addr v7, v1

    xor-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, LB3/c;->D(J)V

    :cond_9
    iget-wide v7, p0, Lcom/google/android/gms/internal/clearcut/w0;->b:J

    cmp-long v1, v7, v2

    if-eqz v1, :cond_a

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v6}, LB3/c;->B(II)V

    invoke-virtual {p1, v7, v8}, LB3/c;->D(J)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    invoke-virtual {p1, v0, v1}, LB3/c;->w(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v6

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget v1, v1, v0

    const/16 v2, 0x14

    invoke-virtual {p1, v2, v6}, LB3/c;->B(II)V

    if-ltz v1, :cond_c

    invoke-virtual {p1, v1}, LB3/c;->z(I)V

    goto :goto_3

    :cond_c
    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, LB3/c;->D(J)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->l:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, LB3/c;->v(ILjava/lang/String;)V

    :cond_e
    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/w0;->n:Z

    if-eqz p0, :cond_10

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v6}, LB3/c;->B(II)V

    int-to-byte p0, p0

    iget-object p1, p1, LB3/c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_f
    new-instance p0, LK3/a;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-direct {p0, v0, p1}, LK3/a;-><init>(II)V

    throw p0

    :cond_10
    :goto_4
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/m0;->d()Lcom/google/android/gms/internal/clearcut/m0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/clearcut/x0;

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/w0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/clearcut/w0;

    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->a:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/w0;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->b:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/w0;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/w0;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/n0;->a:Ljava/lang/Object;

    if-nez v1, :cond_5

    move v4, v2

    goto :goto_0

    :cond_5
    array-length v4, v1

    :goto_0
    if-nez v3, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    array-length v5, v3

    :goto_1
    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v1, v6

    add-int/2addr v6, v0

    goto :goto_2

    :cond_7
    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_8

    aget-object v8, v3, v7

    add-int/2addr v7, v0

    goto :goto_3

    :cond_8
    if-lt v6, v4, :cond_9

    move v4, v0

    goto :goto_4

    :cond_9
    move v4, v2

    :goto_4
    if-lt v7, v5, :cond_a

    move v5, v0

    goto :goto_5

    :cond_a
    move v5, v2

    :goto_5
    if-eqz v4, :cond_1d

    if-eqz v5, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->e:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/w0;->e:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/w0;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->g:Ljava/lang/String;

    if-nez v3, :cond_d

    if-eqz v1, :cond_e

    return v2

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/w0;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->h:Ljava/lang/String;

    if-nez v3, :cond_f

    if-eqz v1, :cond_10

    return v2

    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/w0;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->i:Ljava/lang/String;

    if-nez v3, :cond_11

    if-eqz v1, :cond_12

    return v2

    :cond_11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->j:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/clearcut/w0;->j:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/w0;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/w0;->l:Ljava/lang/String;

    if-nez v3, :cond_15

    if-eqz v1, :cond_16

    return v2

    :cond_15
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    if-eqz v1, :cond_18

    array-length v4, v1

    if-nez v4, :cond_17

    goto :goto_6

    :cond_17
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_8

    :cond_18
    :goto_6
    if-eqz v3, :cond_1a

    array-length v1, v3

    if-nez v1, :cond_19

    goto :goto_7

    :cond_19
    move v1, v2

    goto :goto_8

    :cond_1a
    :goto_7
    move v1, v0

    :goto_8
    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/w0;->n:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/clearcut/w0;->n:Z

    if-eq p0, p1, :cond_1c

    return v2

    :cond_1c
    return v0

    :cond_1d
    if-eq v4, v5, :cond_1e

    return v2

    :cond_1e
    aget-object p0, v1, v6

    aget-object p0, v3, v7

    const/4 p0, 0x0

    throw p0
.end method

.method public final hashCode()I
    .locals 8

    const-class v0, Lcom/google/android/gms/internal/clearcut/w0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->a:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->b:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/w0;->c:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    const/16 v1, 0x4d5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->d:[Lcom/google/android/gms/internal/clearcut/x0;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/n0;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    array-length v5, v2

    :goto_0
    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit16 v0, v0, 0x3c1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->e:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3c1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->f:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v5, p0, Lcom/google/android/gms/internal/clearcut/w0;->j:J

    ushr-long v2, v5, v3

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/w0;->k:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->l:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3c1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/w0;->m:[I

    if-eqz v0, :cond_7

    array-length v3, v0

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    :cond_7
    :goto_6
    add-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x745f

    iget-boolean p0, p0, Lcom/google/android/gms/internal/clearcut/w0;->n:Z

    if-eqz p0, :cond_8

    const/16 v1, 0x4cf

    :cond_8
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    return v2
.end method
