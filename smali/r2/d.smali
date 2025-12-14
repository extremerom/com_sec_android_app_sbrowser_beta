.class public final Lr2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[C

.field public static final f:Lcom/google/common/collect/w;


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lr2/d;->d:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lr2/d;->e:[C

    sget-object v0, Lcom/google/common/base/k;->a:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    sget-object v2, Lcom/google/common/base/k;->e:Ljava/nio/charset/Charset;

    sget-object v3, Lcom/google/common/base/k;->c:Ljava/nio/charset/Charset;

    sget-object v4, Lcom/google/common/base/k;->d:Ljava/nio/charset/Charset;

    const/4 v5, 0x5

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/common/collect/w;->s(I[Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v0

    sput-object v0, Lr2/d;->f:Lcom/google/common/collect/w;

    return-void

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr2/e;->b:[B

    iput-object v0, p0, Lr2/d;->a:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr2/d;->c:I

    iget p0, p0, Lr2/d;->b:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final b(Ljava/nio/charset/Charset;[C)C
    .locals 5

    sget-object v0, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/base/k;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object p1, p0, Lr2/d;->a:[B

    iget v0, p0, Lr2/d;->b:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    invoke-static {v3, v4}, LG5/g2;->b(J)C

    move-result p1

    int-to-byte p1, p1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/common/base/k;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/common/base/k;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v0

    if-lt v0, v3, :cond_3

    iget-object p1, p0, Lr2/d;->a:[B

    iget v0, p0, Lr2/d;->b:I

    aget-byte v4, p1, v0

    add-int/2addr v0, v1

    aget-byte p1, p1, v0

    shl-int/lit8 v0, v4, 0x8

    :goto_0
    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-char p1, p1

    int-to-byte p1, p1

    move v1, v3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/common/base/k;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lr2/d;->a()I

    move-result p1

    if-lt p1, v3, :cond_4

    iget-object p1, p0, Lr2/d;->a:[B

    iget v0, p0, Lr2/d;->b:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    aget-byte p1, p1, v0

    shl-int/lit8 v0, v1, 0x8

    goto :goto_0

    :goto_1
    int-to-long v3, p1

    invoke-static {v3, v4}, LG5/g2;->b(J)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    if-eqz p1, :cond_6

    shr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    array-length v1, p2

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_6

    aget-char v4, p2, v3

    if-ne v4, v0, :cond_5

    iget p2, p0, Lr2/d;->b:I

    const v1, 0xffff

    and-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lr2/d;->b:I

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return v2
.end method

.method public final c()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget-object v2, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    sget-object v3, Lr2/d;->f:Lcom/google/common/collect/w;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/q;->contains(Ljava/lang/Object;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported charset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_6

    :cond_0
    sget-object v3, Lcom/google/common/base/k;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_1

    iget-object v4, p0, Lr2/d;->a:[B

    iget v7, p0, Lr2/d;->b:I

    aget-byte v8, v4, v7

    const/16 v9, -0x11

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v4, v8

    const/16 v9, -0x45

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v7, 0x2

    aget-byte v4, v4, v8

    const/16 v8, -0x41

    if-ne v4, v8, :cond_1

    add-int/2addr v7, v6

    iput v7, p0, Lr2/d;->b:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lr2/d;->a()I

    move-result v4

    if-lt v4, v0, :cond_3

    iget-object v4, p0, Lr2/d;->a:[B

    iget v6, p0, Lr2/d;->b:I

    aget-byte v7, v4, v6

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-ne v7, v9, :cond_2

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v4, v10

    if-ne v10, v8, :cond_2

    add-int/2addr v6, v0

    iput v6, p0, Lr2/d;->b:I

    goto :goto_0

    :cond_2
    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v4, v7

    if-ne v4, v9, :cond_3

    add-int/2addr v6, v0

    iput v6, p0, Lr2/d;->b:I

    :cond_3
    :goto_0
    invoke-virtual {v2, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/google/common/base/k;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/common/base/k;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/common/base/k;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    move v0, v1

    :cond_7
    :goto_2
    iget v3, p0, Lr2/d;->b:I

    :goto_3
    iget v4, p0, Lr2/d;->c:I

    add-int/lit8 v5, v0, -0x1

    sub-int v5, v4, v5

    const/16 v6, 0xd

    if-ge v3, v5, :cond_d

    sget-object v4, Lcom/google/common/base/k;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0xa

    if-nez v4, :cond_8

    sget-object v4, Lcom/google/common/base/k;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lr2/d;->a:[B

    aget-byte v4, v4, v3

    sget v7, Lr2/e;->a:I

    if-eq v4, v5, :cond_e

    if-ne v4, v6, :cond_9

    goto :goto_4

    :cond_9
    sget-object v4, Lcom/google/common/base/k;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/google/common/base/k;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Lr2/d;->a:[B

    aget-byte v7, v4, v3

    if-nez v7, :cond_b

    add-int/lit8 v7, v3, 0x1

    aget-byte v4, v4, v7

    sget v7, Lr2/e;->a:I

    if-eq v4, v5, :cond_e

    if-ne v4, v6, :cond_b

    goto :goto_4

    :cond_b
    sget-object v4, Lcom/google/common/base/k;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lr2/d;->a:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v4, v7

    if-nez v7, :cond_c

    aget-byte v4, v4, v3

    sget v7, Lr2/e;->a:I

    if-eq v4, v5, :cond_e

    if-ne v4, v6, :cond_c

    goto :goto_4

    :cond_c
    add-int/2addr v3, v0

    goto :goto_3

    :cond_d
    move v3, v4

    :cond_e
    :goto_4
    iget v0, p0, Lr2/d;->b:I

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3, v2}, Lr2/d;->d(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lr2/d;->b:I

    iget v3, p0, Lr2/d;->c:I

    if-ne v1, v3, :cond_10

    :cond_f
    :goto_5
    move-object p0, v0

    goto :goto_6

    :cond_10
    sget-object v1, Lr2/d;->d:[C

    invoke-virtual {p0, v2, v1}, Lr2/d;->b(Ljava/nio/charset/Charset;[C)C

    move-result v1

    if-ne v1, v6, :cond_f

    sget-object v1, Lr2/d;->e:[C

    invoke-virtual {p0, v2, v1}, Lr2/d;->b(Ljava/nio/charset/Charset;[C)C

    goto :goto_5

    :goto_6
    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lr2/d;->a:[B

    iget v2, p0, Lr2/d;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p2, p0, Lr2/d;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Lr2/d;->b:I

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lr2/d;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr2/c;->a(Z)V

    iput p1, p0, Lr2/d;->b:I

    return-void
.end method
