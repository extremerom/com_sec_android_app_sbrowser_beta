.class public Lcom/google/common/io/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/common/io/c;

.field public static final d:Lcom/google/common/io/c;


# instance fields
.field public final a:Lcom/google/common/io/a;

.field public final b:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/io/c;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/e;->c:Lcom/google/common/io/c;

    new-instance v0, Lcom/google/common/io/c;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/e;->d:Lcom/google/common/io/c;

    new-instance v0, Lcom/google/common/io/e;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/io/e;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/io/b;

    new-instance v1, Lcom/google/common/io/a;

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "base16()"

    invoke-direct {v1, v3, v2}, Lcom/google/common/io/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, Lcom/google/common/io/b;-><init>(Lcom/google/common/io/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/a;Ljava/lang/Character;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object p1, p1, Lcom/google/common/io/a;->g:[B

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte p1, p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v0, "Padding character %s was already in alphabet"

    invoke-static {v0, p2, p1}, Lcom/google/common/base/C;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object p2, p0, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lcom/google/common/io/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/common/io/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lcom/google/common/io/e;-><init>(Lcom/google/common/io/a;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/e;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    iget v1, v1, Lcom/google/common/io/a;->d:I

    int-to-long v1, v1

    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    long-to-int v0, v1

    new-array v1, v0, [B

    invoke-virtual {p0, v1, p1}, Lcom/google/common/io/e;->b([BLjava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p0, [B

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/common/io/d; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public b([BLjava/lang/CharSequence;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/common/io/e;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v0, v0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    iget v3, v0, Lcom/google/common/io/a;->e:I

    rem-int/2addr v2, v3

    iget-object v3, v0, Lcom/google/common/io/a;->h:[Z

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    const-wide/16 v5, 0x0

    move v7, v2

    move v8, v7

    :goto_1
    iget v9, v0, Lcom/google/common/io/a;->d:I

    iget v10, v0, Lcom/google/common/io/a;->e:I

    if-ge v7, v10, :cond_1

    shl-long/2addr v5, v9

    add-int v9, v3, v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    add-int/lit8 v9, v8, 0x1

    add-int/2addr v8, v3

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/common/io/a;->a(C)I

    move-result v8

    int-to-long v10, v8

    or-long/2addr v5, v10

    move v8, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget v7, v0, Lcom/google/common/io/a;->f:I

    mul-int/lit8 v11, v7, 0x8

    mul-int/2addr v8, v9

    sub-int/2addr v11, v8

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x8

    :goto_2
    if-lt v7, v11, :cond_2

    add-int/lit8 v8, v4, 0x1

    ushr-long v12, v5, v7

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    long-to-int v9, v12

    int-to-byte v9, v9

    aput-byte v9, p1, v4

    add-int/lit8 v7, v7, -0x8

    move v4, v8

    goto :goto_2

    :cond_2
    add-int/2addr v3, v10

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    new-instance v0, Lcom/google/common/io/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid input length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c([B)Ljava/lang/String;
    .locals 5

    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/common/base/C;->i(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    iget v3, v2, Lcom/google/common/io/a;->e:I

    iget v2, v2, Lcom/google/common/io/a;->f:I

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v2, v4}, LG5/L;->d(IILjava/math/RoundingMode;)I

    move-result v2

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/common/io/e;->e(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Ljava/lang/StringBuilder;[BII)V
    .locals 8

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/common/base/C;->i(III)V

    iget-object v0, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    iget v1, v0, Lcom/google/common/io/a;->f:I

    const/4 v2, 0x0

    if-gt p4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/C;->e(Z)V

    const-wide/16 v3, 0x0

    move v1, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v1, p4, :cond_1

    add-int v6, p3, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v3, v6

    shl-long/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/2addr p2, v5

    iget p3, v0, Lcom/google/common/io/a;->d:I

    sub-int/2addr p2, p3

    :goto_2
    mul-int/lit8 v1, p4, 0x8

    if-ge v2, v1, :cond_2

    sub-int v1, p2, v2

    ushr-long v6, v3, v1

    long-to-int v1, v6

    iget v6, v0, Lcom/google/common/io/a;->c:I

    and-int/2addr v1, v6

    iget-object v6, v0, Lcom/google/common/io/a;->b:[C

    aget-char v1, v6, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    if-eqz p0, :cond_3

    :goto_3
    iget p2, v0, Lcom/google/common/io/a;->f:I

    mul-int/2addr p2, v5

    if-ge v2, p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    add-int/2addr v2, p3

    goto :goto_3

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/google/common/base/C;->i(III)V

    :goto_0
    if-ge v1, p3, :cond_0

    iget-object v0, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    iget v2, v0, Lcom/google/common/io/a;->f:I

    sub-int v3, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/io/e;->d(Ljava/lang/StringBuilder;[BII)V

    iget v0, v0, Lcom/google/common/io/a;->f:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/common/io/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/io/e;

    iget-object v0, p1, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    iget-object v2, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    invoke-virtual {v2, v0}, Lcom/google/common/io/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p0, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    invoke-virtual {v0}, Lcom/google/common/io/a;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/io/e;->a:Lcom/google/common/io/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    iget v1, v1, Lcom/google/common/io/a;->d:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/google/common/io/e;->b:Ljava/lang/Character;

    if-nez p0, :cond_0

    const-string p0, ".omitPadding()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
