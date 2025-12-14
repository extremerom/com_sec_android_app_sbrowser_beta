.class final Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeDirectNioEncoder"
.end annotation


# instance fields
.field public d:J


# virtual methods
.method public final A0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->J0(J)V

    :goto_0
    return-void
.end method

.method public final B0(ILcom/google/protobuf/MessageLite;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->D0(Lcom/google/protobuf/MessageLite;)V

    return-void
.end method

.method public final C(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->v0(B)V

    return-void
.end method

.method public final C0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedOutputStream;->a:Lcom/google/protobuf/CodedOutputStreamWriter;

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/Schema;->e(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public final D0(Lcom/google/protobuf/MessageLite;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public final E0(ILcom/google/protobuf/MessageLite;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->t(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->B0(ILcom/google/protobuf/MessageLite;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    return-void
.end method

.method public final F0(ILcom/google/protobuf/ByteString;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->t(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->j(ILcom/google/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    return-void
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v4
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    throw v2

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->d(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    throw v2
    :try_end_1
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/RuntimeException;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/RuntimeException;)V

    throw p1

    :catch_2
    iput-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    throw v2
.end method

.method public final H0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    return-void
.end method

.method public final I0(I)V
    .locals 9

    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-gtz v4, :cond_1

    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    add-long/2addr v5, v0

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    goto :goto_2

    :cond_0
    add-long v2, v0, v5

    or-int/lit16 v4, p1, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    ushr-int/lit8 p1, p1, 0x7

    move-wide v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    and-int/lit8 v4, p1, -0x80

    if-nez v4, :cond_2

    add-long/2addr v5, v0

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    :goto_2
    iput-wide v5, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    return-void

    :cond_2
    add-long v7, v0, v5

    or-int/lit16 v4, p1, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    ushr-int/lit8 p1, p1, 0x7

    move-wide v0, v7

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final J0(J)V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x7

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    if-gtz v5, :cond_1

    move-wide v11, v1

    move-wide/from16 v1, p1

    :goto_0
    and-long v13, v1, v7

    cmp-long v5, v13, v3

    if-nez v5, :cond_0

    add-long/2addr v9, v11

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    goto :goto_2

    :cond_0
    add-long v13, v11, v9

    long-to-int v5, v1

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v11, v12, v5}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    ushr-long/2addr v1, v6

    move-wide v11, v13

    goto :goto_0

    :cond_1
    move-wide v12, v1

    move-wide/from16 v1, p1

    :goto_1
    cmp-long v5, v12, v3

    if-gez v5, :cond_3

    and-long v14, v1, v7

    cmp-long v5, v14, v3

    if-nez v5, :cond_2

    add-long/2addr v9, v12

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {v12, v13, v1}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    :goto_2
    iput-wide v9, v0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    return-void

    :cond_2
    add-long v14, v12, v9

    long-to-int v5, v1

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-static {v12, v13, v5}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    ushr-long/2addr v1, v6

    move-wide v12, v14

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final K0([BII)V
    .locals 11

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    int-to-long v9, p3

    const-wide/16 v0, 0x0

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, p2

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v2, p1

    move-wide v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->d([BJJJ)V

    iget-wide p1, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v1, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public final Q(Ljava/nio/ByteBuffer;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/RuntimeException;)V

    throw p1
.end method

.method public final R([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->K0([BII)V

    return-void
.end method

.method public final d(II)V
    .locals 0

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->G0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->J0(J)V

    return-void
.end method

.method public final j(ILcom/google/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->x0(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final k(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->A0(I)V

    return-void
.end method

.method public final t(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    return-void
.end method

.method public final u0()I
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final v0(B)V
    .locals 11

    iget-wide v0, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->n(JB)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    iget-wide v5, p0, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->d:J

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw p1
.end method

.method public final w0(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->K0([BII)V

    return-void
.end method

.method public final x(IJ)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final x0(Lcom/google/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->I0(I)V

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->K(Lcom/google/protobuf/ByteOutput;)V

    return-void
.end method

.method public final y0(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final z0(J)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
