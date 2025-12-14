.class public abstract Lcom/google/common/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/base/h;

.field public static final b:Lcom/google/common/base/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/base/h;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lcom/google/common/base/h;-><init>(C)V

    sput-object v0, Lcom/google/common/net/a;->a:Lcom/google/common/base/h;

    new-instance v0, Lcom/google/common/base/h;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lcom/google/common/base/h;-><init>(C)V

    sput-object v0, Lcom/google/common/net/a;->b:Lcom/google/common/base/h;

    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x3a

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ge v1, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x2e

    if-ne v4, v10, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    if-ne v4, v7, :cond_2

    if-eqz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    const/16 v10, 0x25

    if-ne v4, v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ne v4, v9, :cond_4

    goto/16 :goto_8

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v9

    :goto_2
    if-eqz v3, :cond_1b

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eqz v2, :cond_7

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/net/a;->c(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v8

    goto :goto_3

    :cond_6
    aget-byte v11, v2, v0

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v4

    aget-byte v12, v2, v5

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    aget-byte v12, v2, v3

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v4

    const/4 v13, 0x3

    aget-byte v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_8

    goto/16 :goto_8

    :cond_7
    move-object v2, p0

    :cond_8
    if-eq v1, v9, :cond_9

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_9
    sget-object v1, Lcom/google/common/net/a;->b:Lcom/google/common/base/h;

    invoke-virtual {v1, v2}, Lcom/google/common/base/C;->k(Ljava/lang/String;)I

    move-result v1

    if-lt v1, v3, :cond_1d

    if-le v1, v4, :cond_a

    goto/16 :goto_8

    :cond_a
    add-int/2addr v1, v5

    rsub-int/lit8 v10, v1, 0x8

    move v11, v0

    move v12, v11

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v5

    if-ge v11, v13, :cond_f

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v7, :cond_e

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v7, :cond_e

    if-eqz v12, :cond_b

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v12, v10, 0x1

    if-nez v11, :cond_c

    add-int/lit8 v12, v10, 0x2

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    if-ne v11, v10, :cond_d

    add-int/lit8 v12, v12, 0x1

    :cond_d
    move v10, v12

    move v12, v5

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_10

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v7, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v7, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_11

    goto/16 :goto_8

    :cond_11
    if-eqz v12, :cond_12

    if-gtz v10, :cond_12

    goto/16 :goto_8

    :cond_12
    if-nez v12, :cond_13

    if-eq v1, v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_14

    goto :goto_5

    :cond_14
    move v5, v0

    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v5, v3, :cond_1a

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v9, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :cond_15
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_16

    move v4, v0

    :goto_6
    if-ge v4, v10, :cond_18

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_16
    sub-int v4, v3, v5

    if-lez v4, :cond_19

    const/4 v11, 0x4

    if-gt v4, v11, :cond_19

    move v4, v0

    :goto_7
    if-ge v5, v3, :cond_17

    shl-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    or-int/2addr v4, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_17
    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_18
    add-int/lit8 v5, v3, 0x1

    goto :goto_5

    :cond_19
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_8

    :cond_1b
    if-eqz v2, :cond_1d

    if-eq v1, v9, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-static {p0}, Lcom/google/common/net/a;->c(Ljava/lang/String;)[B

    move-result-object v8

    :catch_0
    :cond_1d
    :goto_8
    if-eqz v8, :cond_1e

    :try_start_1
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "\'"

    const-string v2, "\' is not an IP string literal."

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(IILjava/lang/String;)B
    .locals 3

    sub-int v0, p1, p0

    if-lez v0, :cond_5

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge p0, p1, :cond_3

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_3
    const/16 p0, 0xff

    if-gt v0, p0, :cond_4

    int-to-byte p0, v0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 7

    sget-object v0, Lcom/google/common/net/a;->a:Lcom/google/common/base/h;

    invoke-virtual {v0, p0}, Lcom/google/common/base/C;->k(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    new-array v0, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    const/16 v5, 0x2e

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_1
    :try_start_0
    invoke-static {v4, v5, p0}, Lcom/google/common/net/a;->b(IILjava/lang/String;)B

    move-result v4

    aput-byte v4, v0, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return-object v1

    :cond_2
    return-object v0
.end method
