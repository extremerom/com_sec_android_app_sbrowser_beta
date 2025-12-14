.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method public static i(JII)I
    .locals 3

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    sget-object p3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p3, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-virtual {p3, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result p0

    invoke-static {p2, v0, p0}, Lcom/google/protobuf/Utf8;->f(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object p3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p3, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result p0

    invoke-static {p2, p0}, Lcom/google/protobuf/Utf8;->e(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcom/google/protobuf/Utf8;->a:Lcom/google/protobuf/Utf8$Processor;

    const/16 p0, -0xc

    if-le p2, p0, :cond_3

    const/4 p2, -0x1

    :cond_3
    return p2
.end method

.method public static j(J[BII)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p2, p0, p1}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result p0

    invoke-static {p3, p4, p0}, Lcom/google/protobuf/Utf8;->f(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p2, p0, p1}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result p0

    invoke-static {p3, p0}, Lcom/google/protobuf/Utf8;->e(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcom/google/protobuf/Utf8;->a:Lcom/google/protobuf/Utf8$Processor;

    const/16 p0, -0xc

    if-le p3, p0, :cond_3

    const/4 p3, -0x1

    :cond_3
    return p3
.end method


# virtual methods
.method public final a([BII)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const v1, 0xfffd

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/UnsafeUtil;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    new-array v0, v1, [C

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    cmp-long v7, v2, v4

    const-wide/16 v12, 0x1

    if-gez v7, :cond_1

    sget-object v7, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->b(B)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    add-long/2addr v2, v12

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    aput-char v7, v0, v6

    move v6, v8

    goto :goto_0

    :cond_1
    :goto_1
    move v14, v6

    :goto_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_c

    add-long v6, v2, v12

    sget-object v8, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v9

    invoke-static {v9}, Lcom/google/protobuf/Utf8$DecodeUtil;->b(B)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v2, v14, 0x1

    int-to-char v3, v9

    aput-char v3, v0, v14

    :goto_3
    cmp-long v3, v6, v4

    if-gez v3, :cond_3

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Utf8$DecodeUtil;->b(B)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    add-long/2addr v6, v12

    add-int/lit8 v8, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v2

    move v2, v8

    goto :goto_3

    :cond_3
    :goto_4
    move v14, v2

    move-wide v2, v6

    goto/16 :goto_7

    :cond_4
    const/16 v10, -0x20

    const/4 v11, 0x1

    if-ge v9, v10, :cond_5

    move v10, v11

    goto :goto_5

    :cond_5
    move v10, v1

    :goto_5
    const-wide/16 v15, 0x2

    if-eqz v10, :cond_7

    cmp-long v10, v6, v4

    if-gez v10, :cond_6

    add-long/2addr v2, v15

    invoke-virtual {v8, v6, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v6

    add-int/lit8 v7, v14, 0x1

    invoke-static {v9, v6, v0, v14}, Lcom/google/protobuf/Utf8$DecodeUtil;->c(BB[CI)V

    move v14, v7

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v10, -0x10

    if-ge v9, v10, :cond_8

    goto :goto_6

    :cond_8
    move v11, v1

    :goto_6
    const-wide/16 v17, 0x3

    if-eqz v11, :cond_a

    sub-long v10, v4, v12

    cmp-long v10, v6, v10

    if-gez v10, :cond_9

    add-long v10, v2, v15

    invoke-virtual {v8, v6, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v6

    add-long v2, v2, v17

    invoke-virtual {v8, v10, v11}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v7

    add-int/lit8 v8, v14, 0x1

    invoke-static {v9, v6, v7, v0, v14}, Lcom/google/protobuf/Utf8$DecodeUtil;->d(BBB[CI)V

    move v14, v8

    goto :goto_7

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a
    sub-long v10, v4, v15

    cmp-long v10, v6, v10

    if-gez v10, :cond_b

    add-long v10, v2, v15

    invoke-virtual {v8, v6, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v7

    add-long v12, v2, v17

    invoke-virtual {v8, v10, v11}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v10

    const-wide/16 v15, 0x4

    add-long/2addr v2, v15

    invoke-virtual {v8, v12, v13}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v11

    move v6, v9

    move v8, v10

    move v9, v11

    move-object v10, v0

    move v11, v14

    invoke-static/range {v6 .. v11}, Lcom/google/protobuf/Utf8$DecodeUtil;->a(BBBB[CI)V

    add-int/lit8 v14, v14, 0x2

    :goto_7
    const-wide/16 v12, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v14}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final d(Ljava/lang/String;[BII)I
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    move-wide/from16 v21, v6

    move-object/from16 p0, v9

    move-wide/from16 v19, v11

    move-wide v4, v14

    move-object v14, v10

    goto/16 :goto_3

    :cond_2
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_3

    sub-long v17, v6, v15

    cmp-long v14, v4, v17

    if-gtz v14, :cond_3

    move-object/from16 p0, v9

    move-object v14, v10

    add-long v9, v4, v11

    ushr-int/lit8 v11, v13, 0x6

    or-int/lit16 v11, v11, 0x3c0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-static {v1, v9, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    :goto_2
    move-wide/from16 v21, v6

    const-wide/16 v19, 0x1

    goto/16 :goto_3

    :cond_3
    move-object/from16 p0, v9

    move-object v14, v10

    const v9, 0xdfff

    const v10, 0xd800

    const-wide/16 v11, 0x3

    if-lt v13, v10, :cond_4

    if-ge v9, v13, :cond_5

    :cond_4
    sub-long v17, v6, v11

    cmp-long v17, v4, v17

    if-gtz v17, :cond_5

    const-wide/16 v17, 0x1

    add-long v9, v4, v17

    ushr-int/lit8 v11, v13, 0xc

    or-int/lit16 v11, v11, 0x1e0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    add-long v11, v4, v15

    ushr-int/lit8 v15, v13, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v3

    int-to-byte v15, v15

    invoke-static {v1, v9, v10, v15}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    const-wide/16 v9, 0x3

    add-long/2addr v4, v9

    and-int/lit8 v9, v13, 0x3f

    or-int/2addr v9, v3

    int-to-byte v9, v9

    invoke-static {v1, v11, v12, v9}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v19, v6, v11

    cmp-long v19, v4, v19

    if-gtz v19, :cond_8

    add-int/lit8 v9, v2, 0x1

    if-eq v9, v8, :cond_7

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v19, 0x1

    add-long v11, v4, v19

    ushr-int/lit8 v10, v2, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    invoke-static {v1, v4, v5, v10}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    move-wide/from16 v21, v6

    add-long v6, v4, v15

    ushr-int/lit8 v10, v2, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v3

    int-to-byte v10, v10

    invoke-static {v1, v11, v12, v10}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    const-wide/16 v10, 0x3

    add-long v11, v4, v10

    ushr-int/lit8 v10, v2, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v3

    int-to-byte v10, v10

    invoke-static {v1, v6, v7, v10}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v11, v12, v2}, Lcom/google/protobuf/UnsafeUtil;->o([BJB)V

    move v2, v9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, p0

    move-object v10, v14

    move-wide/from16 v11, v19

    move-wide/from16 v6, v21

    goto/16 :goto_1

    :cond_6
    move v2, v9

    :cond_7
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_8
    if-gt v10, v13, :cond_a

    if-gt v13, v9, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v6, v14

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v7, p0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    move-object v7, v9

    move-object v6, v10

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f([BIII)I
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    array-length v5, v0

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    if-ltz v4, :cond_26

    int-to-long v4, v2

    int-to-long v2, v3

    const/16 v6, 0x10

    const/16 v8, -0x13

    const/16 v9, -0x10

    const/16 v10, -0x3e

    const/16 v11, -0x60

    const/16 v12, -0x20

    const/4 v13, -0x1

    const/16 v14, -0x41

    const-wide/16 v15, 0x1

    if-eqz v1, :cond_10

    cmp-long v17, v4, v2

    if-ltz v17, :cond_0

    return v1

    :cond_0
    int-to-byte v7, v1

    if-ge v7, v12, :cond_3

    if-lt v7, v10, :cond_2

    add-long v17, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v1

    if-le v1, v14, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v4, v17

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v13

    :cond_3
    if-ge v7, v9, :cond_9

    shr-int/lit8 v1, v1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_5

    add-long v17, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v1

    cmp-long v4, v17, v2

    if-ltz v4, :cond_4

    invoke-static {v7, v1}, Lcom/google/protobuf/Utf8;->e(II)I

    move-result v0

    return v0

    :cond_4
    move-wide/from16 v4, v17

    :cond_5
    if-gt v1, v14, :cond_8

    if-ne v7, v12, :cond_6

    if-lt v1, v11, :cond_8

    :cond_6
    if-ne v7, v8, :cond_7

    if-ge v1, v11, :cond_8

    :cond_7
    add-long v17, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v1

    if-le v1, v14, :cond_1

    :cond_8
    return v13

    :cond_9
    shr-int/lit8 v8, v1, 0x8

    not-int v8, v8

    int-to-byte v8, v8

    if-nez v8, :cond_b

    add-long v17, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v8

    cmp-long v1, v17, v2

    if-ltz v1, :cond_a

    invoke-static {v7, v8}, Lcom/google/protobuf/Utf8;->e(II)I

    move-result v0

    return v0

    :cond_a
    move-wide/from16 v4, v17

    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    shr-int/2addr v1, v6

    int-to-byte v1, v1

    :goto_1
    if-nez v1, :cond_d

    add-long v17, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v1

    cmp-long v4, v17, v2

    if-ltz v4, :cond_c

    invoke-static {v7, v8, v1}, Lcom/google/protobuf/Utf8;->f(III)I

    move-result v0

    return v0

    :cond_c
    move-wide/from16 v4, v17

    :cond_d
    if-gt v8, v14, :cond_f

    shl-int/lit8 v7, v7, 0x1c

    add-int/lit8 v8, v8, 0x70

    add-int/2addr v8, v7

    shr-int/lit8 v7, v8, 0x1e

    if-nez v7, :cond_f

    if-gt v1, v14, :cond_f

    add-long v7, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v1

    if-le v1, v14, :cond_e

    goto :goto_2

    :cond_e
    move-wide v4, v7

    goto :goto_3

    :cond_f
    :goto_2
    return v13

    :cond_10
    :goto_3
    sub-long/2addr v2, v4

    long-to-int v1, v2

    if-ge v1, v6, :cond_11

    const/4 v3, 0x0

    goto :goto_7

    :cond_11
    long-to-int v2, v4

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    move-wide v6, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_13

    add-long v17, v6, v15

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v6

    if-gez v6, :cond_12

    goto :goto_7

    :cond_12
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v17

    goto :goto_4

    :cond_13
    :goto_5
    add-int/lit8 v2, v3, 0x8

    if-gt v2, v1, :cond_15

    sget-wide v17, Lcom/google/protobuf/UnsafeUtil;->f:J

    add-long v13, v17, v6

    sget-object v8, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v13, v14, v0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v13

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v13, v13, v17

    const-wide/16 v17, 0x0

    cmp-long v8, v13, v17

    if-eqz v8, :cond_14

    goto :goto_6

    :cond_14
    const-wide/16 v13, 0x8

    add-long/2addr v6, v13

    move v3, v2

    const/4 v13, -0x1

    const/16 v14, -0x41

    goto :goto_5

    :cond_15
    :goto_6
    if-ge v3, v1, :cond_17

    add-long v13, v6, v15

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v2

    if-gez v2, :cond_16

    goto :goto_7

    :cond_16
    add-int/lit8 v3, v3, 0x1

    move-wide v6, v13

    goto :goto_6

    :cond_17
    move v3, v1

    :goto_7
    sub-int/2addr v1, v3

    int-to-long v2, v3

    add-long/2addr v4, v2

    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-lez v1, :cond_19

    add-long v2, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v4

    if-ltz v4, :cond_18

    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v19, v2

    move v2, v4

    move-wide/from16 v4, v19

    goto :goto_9

    :cond_18
    move-wide/from16 v19, v2

    move v2, v4

    move-wide/from16 v4, v19

    :cond_19
    if-nez v1, :cond_1a

    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_1a
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v12, :cond_1e

    if-nez v3, :cond_1b

    move v7, v2

    goto/16 :goto_c

    :cond_1b
    add-int/lit8 v1, v1, -0x2

    if-lt v2, v10, :cond_1d

    add-long v2, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v4

    const/16 v5, -0x41

    if-le v4, v5, :cond_1c

    goto :goto_a

    :cond_1c
    move v13, v5

    move-wide v4, v2

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v7, -0x1

    goto :goto_c

    :cond_1e
    const-wide/16 v6, 0x2

    if-ge v2, v9, :cond_23

    const/4 v13, 0x2

    if-ge v3, v13, :cond_1f

    invoke-static {v4, v5, v0, v2, v3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->j(J[BII)I

    move-result v7

    goto :goto_c

    :cond_1f
    add-int/lit8 v1, v1, -0x3

    add-long v13, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v3

    const/16 v8, -0x41

    if-gt v3, v8, :cond_1d

    if-ne v2, v12, :cond_20

    if-lt v3, v11, :cond_1d

    :cond_20
    const/16 v8, -0x13

    if-ne v2, v8, :cond_21

    if-ge v3, v11, :cond_1d

    :cond_21
    add-long/2addr v4, v6

    invoke-static {v0, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v2

    const/16 v3, -0x41

    if-le v2, v3, :cond_22

    goto :goto_a

    :cond_22
    move v13, v3

    goto :goto_b

    :cond_23
    const/16 v8, -0x13

    const/4 v14, 0x3

    if-ge v3, v14, :cond_24

    invoke-static {v4, v5, v0, v2, v3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->j(J[BII)I

    move-result v7

    goto :goto_c

    :cond_24
    add-int/lit8 v1, v1, -0x4

    add-long v8, v4, v15

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v14

    const/16 v13, -0x41

    if-gt v14, v13, :cond_1d

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v14, v14, 0x70

    add-int/2addr v14, v2

    shr-int/lit8 v2, v14, 0x1e

    if-nez v2, :cond_1d

    add-long/2addr v6, v4

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v2

    if-gt v2, v13, :cond_1d

    const-wide/16 v8, 0x3

    add-long/2addr v4, v8

    invoke-static {v0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->i([BJ)B

    move-result v2

    if-le v2, v13, :cond_25

    goto :goto_a

    :cond_25
    :goto_b
    const/16 v9, -0x10

    goto/16 :goto_8

    :goto_c
    return v7

    :cond_26
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Array length=%d, index=%d, limit=%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final h(IIILjava/nio/ByteBuffer;)I
    .locals 21

    move/from16 v0, p1

    move/from16 v1, p2

    or-int v2, v1, p3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-ltz v2, :cond_23

    invoke-static/range {p4 .. p4}, Lcom/google/protobuf/UnsafeUtil;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    sub-int v1, p3, v1

    int-to-long v4, v1

    add-long/2addr v4, v2

    const/16 v1, 0x8

    const/4 v6, -0x1

    const/16 v7, 0x10

    const/16 v9, -0x13

    const/16 v10, -0x10

    const/16 v11, -0x3e

    const/16 v12, -0x60

    const/16 v13, -0x20

    const/16 v14, -0x41

    const-wide/16 v15, 0x1

    if-eqz v0, :cond_10

    cmp-long v17, v2, v4

    if-ltz v17, :cond_0

    return v0

    :cond_0
    int-to-byte v8, v0

    if-ge v8, v13, :cond_3

    if-lt v8, v11, :cond_2

    add-long v17, v2, v15

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v0

    if-le v0, v14, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v2, v17

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v6

    :cond_3
    if-ge v8, v10, :cond_9

    shr-int/2addr v0, v1

    not-int v0, v0

    int-to-byte v0, v0

    if-nez v0, :cond_5

    add-long v17, v2, v15

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v0

    cmp-long v2, v17, v4

    if-ltz v2, :cond_4

    invoke-static {v8, v0}, Lcom/google/protobuf/Utf8;->e(II)I

    move-result v0

    return v0

    :cond_4
    move-wide/from16 v2, v17

    :cond_5
    if-gt v0, v14, :cond_8

    if-ne v8, v13, :cond_6

    if-lt v0, v12, :cond_8

    :cond_6
    if-ne v8, v9, :cond_7

    if-ge v0, v12, :cond_8

    :cond_7
    add-long v17, v2, v15

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v0

    if-le v0, v14, :cond_1

    :cond_8
    return v6

    :cond_9
    shr-int/lit8 v9, v0, 0x8

    not-int v9, v9

    int-to-byte v9, v9

    if-nez v9, :cond_b

    add-long v17, v2, v15

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v9

    cmp-long v0, v17, v4

    if-ltz v0, :cond_a

    invoke-static {v8, v9}, Lcom/google/protobuf/Utf8;->e(II)I

    move-result v0

    return v0

    :cond_a
    move-wide/from16 v2, v17

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    shr-int/2addr v0, v7

    int-to-byte v0, v0

    :goto_1
    if-nez v0, :cond_d

    add-long v17, v2, v15

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v0

    cmp-long v2, v17, v4

    if-ltz v2, :cond_c

    invoke-static {v8, v9, v0}, Lcom/google/protobuf/Utf8;->f(III)I

    move-result v0

    return v0

    :cond_c
    move-wide/from16 v2, v17

    :cond_d
    if-gt v9, v14, :cond_f

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0x1e

    if-nez v8, :cond_f

    if-gt v0, v14, :cond_f

    add-long v8, v2, v15

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v0

    if-le v0, v14, :cond_e

    goto :goto_2

    :cond_e
    move-wide v2, v8

    goto :goto_3

    :cond_f
    :goto_2
    return v6

    :cond_10
    :goto_3
    sub-long/2addr v4, v2

    long-to-int v0, v4

    if-ge v0, v7, :cond_11

    const/4 v4, 0x0

    goto :goto_6

    :cond_11
    neg-long v4, v2

    const-wide/16 v7, 0x7

    and-long/2addr v4, v7

    long-to-int v4, v4

    move-wide v7, v2

    move v5, v4

    :goto_4
    if-lez v5, :cond_13

    add-long v17, v7, v15

    sget-object v9, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v9, v7, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v7

    if-gez v7, :cond_12

    sub-int/2addr v4, v5

    goto :goto_6

    :cond_12
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v7, v17

    goto :goto_4

    :cond_13
    sub-int v4, v0, v4

    :goto_5
    if-lt v4, v1, :cond_14

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->k(J)J

    move-result-wide v17

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    if-nez v5, :cond_14

    const-wide/16 v17, 0x8

    add-long v7, v7, v17

    add-int/lit8 v4, v4, -0x8

    goto :goto_5

    :cond_14
    sub-int v4, v0, v4

    :goto_6
    int-to-long v7, v4

    add-long/2addr v2, v7

    sub-int/2addr v0, v4

    :goto_7
    const/4 v1, 0x0

    :goto_8
    if-lez v0, :cond_16

    add-long v4, v2, v15

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v1

    if-ltz v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    move-wide v2, v4

    goto :goto_8

    :cond_15
    move-wide v2, v4

    :cond_16
    if-nez v0, :cond_17

    const/4 v6, 0x0

    goto/16 :goto_b

    :cond_17
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v13, :cond_1a

    if-nez v4, :cond_18

    move v6, v1

    goto/16 :goto_b

    :cond_18
    add-int/lit8 v0, v0, -0x2

    if-lt v1, v11, :cond_22

    add-long v4, v2, v15

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v1

    if-le v1, v14, :cond_19

    goto/16 :goto_b

    :cond_19
    move-wide v2, v4

    const/16 v10, -0x13

    goto :goto_a

    :cond_1a
    const-wide/16 v7, 0x2

    if-ge v1, v10, :cond_1f

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1b

    invoke-static {v2, v3, v1, v4}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->i(JII)I

    move-result v6

    goto :goto_b

    :cond_1b
    add-int/lit8 v0, v0, -0x3

    add-long v4, v2, v15

    sget-object v9, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v9, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v6

    if-gt v6, v14, :cond_1e

    if-ne v1, v13, :cond_1c

    if-lt v6, v12, :cond_1e

    :cond_1c
    const/16 v10, -0x13

    if-ne v1, v10, :cond_1d

    if-ge v6, v12, :cond_1e

    :cond_1d
    add-long/2addr v2, v7

    invoke-virtual {v9, v4, v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v1

    if-le v1, v14, :cond_21

    :cond_1e
    :goto_9
    const/4 v6, -0x1

    goto :goto_b

    :cond_1f
    const/16 v10, -0x13

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    invoke-static {v2, v3, v1, v4}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->i(JII)I

    move-result v6

    goto :goto_b

    :cond_20
    add-int/lit8 v0, v0, -0x4

    add-long v4, v2, v15

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v9

    if-gt v9, v14, :cond_1e

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v9, v1

    shr-int/lit8 v1, v9, 0x1e

    if-nez v1, :cond_1e

    add-long/2addr v7, v2

    invoke-virtual {v6, v4, v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v1

    if-gt v1, v14, :cond_1e

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->f(J)B

    move-result v1

    if-le v1, v14, :cond_21

    goto :goto_9

    :cond_21
    :goto_a
    const/4 v6, -0x1

    const/16 v10, -0x10

    goto/16 :goto_7

    :cond_22
    :goto_b
    return v6

    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
