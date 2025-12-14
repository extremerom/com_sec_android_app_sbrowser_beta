.class public final Lcom/google/android/gms/internal/clearcut/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Landroid/os/UserManager; = null

.field public static volatile c:Z = false

.field public static final synthetic d:[I

.field public static final e:[I

.field public static final f:[B


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/l0;->d:[I

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/clearcut/l0;->e:[I

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/clearcut/l0;->f:[B

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Ljava/lang/String;)Ljava/lang/String;
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

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v1, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static a(I[B)I
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

.method public static b(I[BIILcom/google/android/gms/internal/auth/A;)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_7

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/clearcut/A;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget v0, p4, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq v0, p0, :cond_2

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/l0;->b(I[BIILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    goto :goto_0

    :cond_2
    if-gt p2, p3, :cond_3

    if-ne v0, p0, :cond_3

    return p2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->b()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p0

    iget p1, p4, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_5
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_6
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result p0

    return p0

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/clearcut/A;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(I[BIILcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/auth/A;)I
    .locals 9

    ushr-int/lit8 v0, p0, 0x3

    const-string v1, "Protocol message contained an invalid tag (zero)."

    if-eqz v0, :cond_9

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/clearcut/A;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object v0

    and-int/lit8 v1, p0, -0x8

    or-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v4

    iget p2, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    move v2, p2

    if-eq p2, v1, :cond_2

    move-object v3, p1

    move v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/l0;->c(I[BIILcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    move v8, v2

    move v2, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move p2, v4

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v2, v1, :cond_4

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->b()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez p3, :cond_6

    sget-object p1, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    :goto_1
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/k;->i([BII)Lcom/google/android/gms/internal/clearcut/k;

    move-result-object p1

    goto :goto_1

    :goto_2
    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_8
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    return p1

    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/clearcut/A;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(I[BILcom/google/android/gms/internal/auth/A;)I
    .locals 2

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-ltz v1, :cond_0

    shl-int/lit8 p1, v1, 0x7

    :goto_0
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

    goto :goto_0

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

    :goto_1
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    iput p0, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_1
.end method

.method public static e(J[BII)I
    .locals 6

    const/4 v0, -0x1

    const/16 v1, -0xc

    if-eqz p4, :cond_6

    const/4 v2, 0x1

    const/16 v3, -0x41

    if-eq p4, v2, :cond_3

    const/4 v2, 0x2

    if-ne p4, v2, :cond_2

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result p4

    const-wide/16 v4, 0x1

    add-long/2addr p0, v4

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/clearcut/k0;->a:Lcom/google/android/gms/internal/clearcut/l0;

    if-gt p3, v1, :cond_1

    if-gt p4, v3, :cond_1

    if-le p0, v3, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p4, 0x8

    xor-int/2addr p1, p3

    shl-int/lit8 p0, p0, 0x10

    xor-int v0, p1, p0

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/clearcut/k0;->a:Lcom/google/android/gms/internal/clearcut/l0;

    if-gt p3, v1, :cond_5

    if-le p0, v3, :cond_4

    goto :goto_1

    :cond_4
    shl-int/lit8 p0, p0, 0x8

    xor-int v0, p3, p0

    :cond_5
    :goto_1
    return v0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/clearcut/k0;->a:Lcom/google/android/gms/internal/clearcut/l0;

    if-le p3, v1, :cond_7

    move p3, v0

    :cond_7
    return p3
.end method

.method public static f([BILcom/google/android/gms/internal/auth/A;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/l0;->d(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result p0

    return p0
.end method

.method public static g([BILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I
    .locals 0

    if-nez p2, :cond_2

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget p2, p3, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr p2, p1

    if-lt p1, p2, :cond_1

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static h(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static i(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    return-wide p0
.end method

.method public static j([B)J
    .locals 39

    move-object/from16 v7, p0

    array-length v0, v7

    if-ltz v0, :cond_7

    array-length v1, v7

    if-gt v0, v1, :cond_7

    const-wide v8, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    const/16 v2, 0x1e

    const/16 v3, 0x2b

    const/16 v10, 0x2f

    const/4 v4, 0x2

    const/16 v11, 0x25

    const/16 v5, 0x20

    const/16 v6, 0x10

    const-wide v12, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const/16 v14, 0x8

    const-wide v15, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    const/4 v1, 0x0

    if-gt v0, v5, :cond_4

    if-gt v0, v6, :cond_3

    if-lt v0, v14, :cond_0

    shl-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    add-long v8, v2, v15

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v1

    add-long/2addr v1, v15

    sub-int/2addr v0, v14

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v3

    invoke-static {v3, v4, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    mul-long/2addr v5, v8

    add-long/2addr v5, v1

    const/16 v0, 0x19

    invoke-static {v1, v2, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, v3

    mul-long/2addr v0, v8

    move-wide v4, v5

    move-wide v6, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    shl-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    add-long v9, v3, v15

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->a(I[B)I

    move-result v1

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    int-to-long v11, v0

    const/4 v1, 0x3

    shl-long/2addr v3, v1

    add-long/2addr v3, v11

    sub-int/2addr v0, v2

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/clearcut/l0;->a(I[B)I

    move-result v0

    int-to-long v0, v0

    and-long v7, v0, v5

    move-wide v5, v3

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-lez v0, :cond_2

    aget-byte v1, v7, v1

    shr-int/lit8 v2, v0, 0x1

    aget-byte v2, v7, v2

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v7, v3

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v14

    add-int/2addr v1, v2

    and-int/lit16 v2, v3, 0xff

    shl-int/2addr v2, v4

    add-int/2addr v0, v2

    int-to-long v1, v1

    mul-long/2addr v1, v15

    int-to-long v3, v0

    mul-long/2addr v3, v8

    xor-long v0, v1, v3

    ushr-long v2, v0, v10

    xor-long/2addr v0, v2

    mul-long/2addr v0, v15

    return-wide v0

    :cond_2
    return-wide v15

    :cond_3
    shl-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    add-long v22, v4, v15

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v4

    mul-long/2addr v4, v12

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v8

    add-int/lit8 v1, v0, -0x8

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v10

    mul-long v10, v10, v22

    sub-int/2addr v0, v6

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v0

    mul-long/2addr v0, v15

    add-long v6, v4, v8

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    invoke-static {v10, v11, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long v18, v2, v0

    add-long/2addr v8, v15

    const/16 v0, 0x12

    invoke-static {v8, v9, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, v4

    add-long v20, v0, v10

    invoke-static/range {v18 .. v23}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const/16 v5, 0x40

    if-gt v0, v5, :cond_5

    shl-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    add-long/2addr v4, v15

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v8

    mul-long v18, v8, v15

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v8

    add-int/lit8 v1, v0, -0x8

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v10

    mul-long/2addr v10, v4

    add-int/lit8 v1, v0, -0x10

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v12

    mul-long/2addr v12, v15

    add-long v6, v18, v8

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    invoke-static {v10, v11, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v20

    add-long v20, v20, v6

    add-long v20, v20, v12

    add-long/2addr v8, v15

    const/16 v1, 0x12

    invoke-static {v8, v9, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    add-long v6, v6, v18

    add-long/2addr v10, v6

    move-wide/from16 v8, v20

    move-wide v12, v4

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v6

    const/16 v1, 0x10

    move-object/from16 v14, p0

    invoke-static {v1, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v8

    mul-long/2addr v8, v4

    const/16 v1, 0x18

    invoke-static {v1, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v10

    add-int/lit8 v12, v0, -0x20

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v12

    add-long v12, v12, v20

    mul-long/2addr v12, v4

    sub-int/2addr v0, v1

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v0

    add-long/2addr v0, v6

    mul-long/2addr v0, v4

    add-long v6, v8, v10

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    invoke-static {v12, v13, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long v10, v10, v18

    const/16 v2, 0x12

    invoke-static {v10, v11, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v8

    add-long v9, v2, v12

    move-wide v7, v0

    move-wide v11, v4

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    move-object v14, v7

    new-array v7, v4, [J

    new-array v15, v4, [J

    const-wide v2, 0x1529cba0ca458ffL

    invoke-static {v1, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v16

    add-long v16, v16, v2

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v2, v0, 0x40

    shl-int/lit8 v6, v2, 0x6

    and-int/lit8 v4, v0, 0x3f

    add-int v19, v6, v4

    add-int/lit8 v20, v19, -0x3f

    const-wide v2, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    const-wide v21, 0x134a747f856d0526L    # 9.592726139023731E-216

    move/from16 v23, v1

    :goto_0
    add-long v16, v16, v2

    aget-wide v24, v7, v1

    add-long v16, v16, v24

    add-int/lit8 v0, v23, 0x8

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v24

    move/from16 v26, v6

    add-long v5, v24, v16

    invoke-static {v5, v6, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    mul-long/2addr v5, v12

    aget-wide v16, v7, v18

    add-long v2, v2, v16

    add-int/lit8 v0, v23, 0x30

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v16

    add-long v2, v16, v2

    const/16 v0, 0x2a

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v12

    aget-wide v16, v15, v18

    xor-long v16, v5, v16

    aget-wide v5, v7, v1

    add-int/lit8 v0, v23, 0x28

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v27

    add-long v27, v27, v5

    add-long v27, v27, v2

    aget-wide v2, v15, v1

    add-long v2, v21, v2

    const/16 v6, 0x21

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v21, v2, v12

    aget-wide v2, v7, v18

    mul-long/2addr v2, v12

    aget-wide v29, v15, v1

    add-long v29, v16, v29

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    move/from16 v24, v1

    move/from16 v1, v23

    move v8, v4

    move v9, v5

    const/16 v25, 0x40

    move-wide/from16 v4, v29

    move/from16 v10, v26

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/l0;->n([BIJJ[J)V

    add-int/lit8 v1, v23, 0x20

    aget-wide v2, v15, v18

    add-long v2, v21, v2

    add-int/lit8 v0, v23, 0x10

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v4

    add-long v4, v4, v27

    move-object/from16 v0, p0

    move-object v6, v15

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/l0;->n([BIJJ[J)V

    add-int/lit8 v0, v23, 0x40

    if-ne v0, v10, :cond_6

    const-wide/16 v0, 0xff

    and-long v0, v16, v0

    shl-long v0, v0, v18

    add-long/2addr v12, v0

    aget-wide v0, v15, v24

    int-to-long v2, v8

    add-long/2addr v0, v2

    aput-wide v0, v15, v24

    aget-wide v2, v7, v24

    add-long/2addr v2, v0

    aput-wide v2, v7, v24

    aget-wide v0, v15, v24

    add-long/2addr v0, v2

    aput-wide v0, v15, v24

    add-long v21, v21, v27

    aget-wide v0, v7, v24

    add-long v21, v21, v0

    add-int/lit8 v0, v19, -0x37

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v0

    add-long v0, v0, v21

    invoke-static {v0, v1, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v12

    aget-wide v2, v7, v18

    add-long v27, v27, v2

    add-int/lit8 v2, v19, -0xf

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v2

    add-long v2, v2, v27

    invoke-static {v2, v3, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v12

    aget-wide v4, v15, v18

    const-wide/16 v8, 0x9

    mul-long/2addr v4, v8

    xor-long v8, v0, v4

    aget-wide v0, v7, v24

    const-wide/16 v4, 0x9

    mul-long/2addr v0, v4

    add-int/lit8 v4, v19, -0x17

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v4

    add-long/2addr v4, v0

    add-long v10, v4, v2

    aget-wide v0, v15, v24

    add-long v0, v16, v0

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v16, v0, v12

    aget-wide v0, v7, v18

    mul-long v2, v0, v12

    aget-wide v0, v15, v24

    add-long v4, v8, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/l0;->n([BIJJ[J)V

    add-int/lit8 v1, v19, -0x1f

    aget-wide v2, v15, v18

    add-long v2, v16, v2

    const/16 v0, 0x2f

    add-int/lit8 v4, v19, -0x2f

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v4

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    move-object v6, v15

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/l0;->n([BIJJ[J)V

    aget-wide v31, v7, v24

    aget-wide v33, v15, v24

    move-wide/from16 v35, v12

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v0

    const/16 v2, 0x2f

    ushr-long v2, v10, v2

    xor-long/2addr v2, v10

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    add-long v0, v2, v8

    aget-wide v31, v7, v18

    aget-wide v33, v15, v18

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v2

    add-long v33, v2, v16

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/clearcut/l0;->i(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    move/from16 v23, v0

    move v4, v8

    move v6, v10

    move/from16 v1, v24

    move/from16 v5, v25

    move-wide/from16 v2, v27

    const-wide v8, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    const/16 v10, 0x2f

    move-wide/from16 v37, v16

    move-wide/from16 v16, v21

    move-wide/from16 v21, v37

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Out of bound index with offput: 0 and length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static k(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/StringBuilder;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const-string v10, "get"

    if-ge v9, v7, :cond_1

    aget-object v11, v6, v9

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "List"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_4

    const-string v12, "OrBuilderList"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/l0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v12, v0, v7}, Lcom/google/android/gms/internal/clearcut/w;->b(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/clearcut/g;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v2, v6, v7}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v11, "Map"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_5
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    :goto_3
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    const-class v14, Ljava/util/Map;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-class v12, Ljava/lang/Deprecated;

    invoke-virtual {v6, v12}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/l0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v6, v0, v9}, Lcom/google/android/gms/internal/clearcut/w;->b(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/clearcut/g;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v2, v7, v6}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    const-string v11, "set"

    if-eqz v6, :cond_7

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    const-string v6, "Bytes"

    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v9, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_9
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_a
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v11

    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_b
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const-string v14, "has"

    if-eqz v12, :cond_c

    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_c
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    if-eqz v11, :cond_2

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v11, v0, v12}, Lcom/google/android/gms/internal/clearcut/w;->b(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/clearcut/g;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_16

    instance-of v9, v11, Ljava/lang/Boolean;

    if-eqz v9, :cond_e

    move-object v7, v11

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_d

    :goto_9
    move v7, v13

    goto/16 :goto_b

    :cond_d
    move v7, v8

    goto :goto_b

    :cond_e
    instance-of v9, v11, Ljava/lang/Integer;

    if-eqz v9, :cond_f

    move-object v7, v11

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_9

    :cond_f
    instance-of v9, v11, Ljava/lang/Float;

    if-eqz v9, :cond_10

    move-object v7, v11

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_d

    goto :goto_9

    :cond_10
    instance-of v9, v11, Ljava/lang/Double;

    if-eqz v9, :cond_11

    move-object v7, v11

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpl-double v7, v14, v16

    if-nez v7, :cond_d

    goto :goto_9

    :cond_11
    instance-of v9, v11, Ljava/lang/String;

    if-eqz v9, :cond_12

    :goto_a
    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_b

    :cond_12
    instance-of v7, v11, Lcom/google/android/gms/internal/clearcut/k;

    if-eqz v7, :cond_13

    sget-object v7, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    goto :goto_a

    :cond_13
    instance-of v7, v11, Lcom/google/android/gms/internal/clearcut/g;

    if-eqz v7, :cond_14

    move-object v7, v11

    check-cast v7, Lcom/google/android/gms/internal/clearcut/g;

    check-cast v7, Lcom/google/android/gms/internal/clearcut/w;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/clearcut/w;

    if-ne v11, v7, :cond_d

    goto :goto_9

    :cond_14
    instance-of v7, v11, Ljava/lang/Enum;

    if-eqz v7, :cond_d

    move-object v7, v11

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_9

    :goto_b
    if-nez v7, :cond_15

    goto :goto_c

    :cond_15
    move v13, v8

    goto :goto_c

    :cond_16
    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v9, v0, v7}, Lcom/google/android/gms/internal/clearcut/w;->b(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/clearcut/g;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :goto_c
    if-eqz v13, :cond_2

    invoke-static {v6}, Lcom/google/android/gms/internal/clearcut/l0;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6, v11}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_17
    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    if-eqz v0, :cond_18

    :goto_d
    iget v3, v0, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    if-ge v8, v3, :cond_18

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/a0;->b:[I

    aget v3, v3, v8

    ushr-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/clearcut/a0;->c:[Ljava/lang/Object;

    aget-object v4, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 11

    if-eqz p1, :cond_14

    instance-of v0, p1, Lcom/google/android/gms/internal/clearcut/m0;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " <\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cachedSize"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    and-int/lit8 v9, v7, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    and-int/lit8 v7, v7, 0x8

    const/16 v9, 0x8

    if-eq v7, v9, :cond_3

    const-string v7, "_"

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v7, v9, :cond_2

    if-nez v6, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    :goto_1
    move v9, v1

    :goto_2
    if-ge v9, v7, :cond_3

    invoke-static {v6, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10, p2, p3}, Lcom/google/android/gms/internal/clearcut/l0;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v8, v6, p2, p3}, Lcom/google/android/gms/internal/clearcut/l0;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    :goto_3
    if-ge v1, v4, :cond_8

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, "has"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_4
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    :try_start_1
    const-string v6, "get"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_5
    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, p2, p3}, Lcom/google/android/gms/internal/clearcut/l0;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    :catch_0
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p0, ">\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    return-void

    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/l0;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of p0, p1, Ljava/lang/String;

    const/16 p2, 0x20

    const/16 v0, 0x22

    if-eqz p0, :cond_e

    check-cast p1, Ljava/lang/String;

    const-string p0, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0xc8

    if-le p0, v2, :cond_b

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[...]"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_6
    if-ge v1, p0, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, p2, :cond_c

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_c

    if-eq v3, v0, :cond_c

    const/16 v4, 0x27

    if-eq v3, v4, :cond_c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_e
    instance-of p0, p1, [B

    if-eqz p0, :cond_13

    check-cast p1, [B

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    array-length p0, p1

    if-ge v1, p0, :cond_12

    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x5c

    if-eq p0, v2, :cond_11

    if-ne p0, v0, :cond_f

    goto :goto_a

    :cond_f
    if-lt p0, p2, :cond_10

    const/16 v2, 0x7f

    if-ge p0, v2, :cond_10

    :goto_9
    int-to-char p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "\\%03o"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_11
    :goto_a
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_13
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_c
    const-string p0, "\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    return-void
.end method

.method public static final m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
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

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

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

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

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

    sget-object p1, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    new-instance p1, Lcom/google/android/gms/internal/clearcut/k;

    sget-object p2, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/k;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/l0;->u(Lcom/google/android/gms/internal/clearcut/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_5
    instance-of p2, p3, Lcom/google/android/gms/internal/clearcut/k;

    if-eqz p2, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/android/gms/internal/clearcut/k;

    invoke-static {p3}, Lcom/google/android/gms/internal/clearcut/l0;->u(Lcom/google/android/gms/internal/clearcut/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_6
    instance-of p2, p3, Lcom/google/android/gms/internal/clearcut/w;

    const-string v1, "}"

    const-string v3, "\n"

    const-string v4, " {"

    if-eqz p2, :cond_8

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Lcom/google/android/gms/internal/clearcut/w;

    add-int/lit8 p2, p1, 0x2

    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/clearcut/l0;->k(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v0, p1, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_8
    instance-of p2, p3, Ljava/util/Map$Entry;

    if-eqz p2, :cond_a

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p3, Ljava/util/Map$Entry;

    add-int/lit8 p2, p1, 0x2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "key"

    invoke-static {p0, p2, v5, v4}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "value"

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p2, v4, p3}, Lcom/google/android/gms/internal/clearcut/l0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-ge v0, p1, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_a
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static n([BIJJ[J)V
    .locals 6

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide v4

    add-int/lit8 p1, p1, 0x18

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/clearcut/l0;->r(I[B)J

    move-result-wide p0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x2c

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, p4

    const/4 p4, 0x0

    add-long/2addr v2, p0

    aput-wide v2, p6, p4

    const/4 p0, 0x1

    add-long/2addr v0, p2

    aput-wide v0, p6, p0

    return-void
.end method

.method public static o([BILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static q([BILcom/google/android/gms/internal/auth/A;)I
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

.method public static r(I[B)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p1, p0, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static s(I[B)I
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

.method public static t([BILcom/google/android/gms/internal/auth/A;)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method public static u(Lcom/google/android/gms/internal/clearcut/k;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/k;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/k;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/k;->l(I)B

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

    :goto_1
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

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

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string v2, "\\f"

    goto :goto_2

    :pswitch_2
    const-string v2, "\\v"

    goto :goto_2

    :pswitch_3
    const-string v2, "\\n"

    goto :goto_2

    :pswitch_4
    const-string v2, "\\t"

    goto :goto_2

    :pswitch_5
    const-string v2, "\\b"

    goto :goto_2

    :pswitch_6
    const-string v2, "\\a"

    goto :goto_2

    :cond_1
    const-string v2, "\\\\"

    goto :goto_2

    :cond_2
    const-string v2, "\\\'"

    goto :goto_2

    :cond_3
    const-string v2, "\\\""

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

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

.method public static v([BILcom/google/android/gms/internal/auth/A;)I
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1

    :cond_0
    add-int v1, p1, v0

    sget-object v2, Lcom/google/android/gms/internal/clearcut/k0;->a:Lcom/google/android/gms/internal/clearcut/l0;

    invoke-virtual {v2, p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/l0;->p([BII)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->c()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0
.end method

.method public static w(I[B)J
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

.method public static x(I[B)D
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static y([BILcom/google/android/gms/internal/auth/A;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/k;->i([BII)Lcom/google/android/gms/internal/clearcut/k;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method public static z(I[B)F
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final p([BII)I
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    iget v2, v2, Lcom/google/android/gms/internal/clearcut/l0;->a:I

    packed-switch v2, :pswitch_data_0

    or-int v2, v1, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    or-int/2addr v2, v4

    if-ltz v2, :cond_10

    int-to-long v1, v1

    int-to-long v3, v3

    sub-long/2addr v3, v1

    long-to-int v3, v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    if-ge v3, v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move-wide v8, v1

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_2

    add-long v10, v8, v6

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v8

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide v8, v10

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    sub-int/2addr v3, v4

    int-to-long v8, v4

    add-long/2addr v1, v8

    :cond_3
    :goto_2
    move v4, v5

    :goto_3
    if-lez v3, :cond_5

    add-long v8, v1, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v4

    if-ltz v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    move-wide v1, v8

    goto :goto_3

    :cond_4
    move-wide v1, v8

    :cond_5
    if-nez v3, :cond_6

    goto/16 :goto_6

    :cond_6
    add-int/lit8 v8, v3, -0x1

    const/4 v9, -0x1

    const/16 v10, -0x20

    const/16 v11, -0x41

    if-ge v4, v10, :cond_a

    if-nez v8, :cond_7

    move v5, v4

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v3, v3, -0x2

    const/16 v8, -0x3e

    if-lt v4, v8, :cond_9

    add-long v12, v1, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v1

    if-le v1, v11, :cond_8

    goto :goto_4

    :cond_8
    move-wide v1, v12

    goto :goto_2

    :cond_9
    :goto_4
    move v5, v9

    goto :goto_6

    :cond_a
    const/16 v12, -0x10

    if-ge v4, v12, :cond_e

    const/4 v12, 0x2

    if-ge v8, v12, :cond_b

    :goto_5
    invoke-static {v1, v2, v0, v4, v8}, Lcom/google/android/gms/internal/clearcut/l0;->e(J[BII)I

    move-result v5

    goto :goto_6

    :cond_b
    add-int/lit8 v3, v3, -0x3

    add-long v13, v1, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v8

    if-gt v8, v11, :cond_9

    const/16 v12, -0x60

    if-ne v4, v10, :cond_c

    if-lt v8, v12, :cond_9

    :cond_c
    const/16 v10, -0x13

    if-ne v4, v10, :cond_d

    if-ge v8, v12, :cond_9

    :cond_d
    const-wide/16 v15, 0x2

    add-long/2addr v1, v15

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v4

    if-le v4, v11, :cond_3

    goto :goto_4

    :cond_e
    const/4 v10, 0x3

    if-ge v8, v10, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v3, v3, -0x4

    add-long v12, v1, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v8

    if-gt v8, v11, :cond_9

    shl-int/lit8 v4, v4, 0x1c

    add-int/lit8 v8, v8, 0x70

    add-int/2addr v8, v4

    shr-int/lit8 v4, v8, 0x1e

    if-nez v4, :cond_9

    const-wide/16 v14, 0x2

    add-long/2addr v14, v1

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v4

    if-gt v4, v11, :cond_9

    const-wide/16 v12, 0x3

    add-long/2addr v1, v12

    invoke-static {v0, v14, v15}, Lcom/google/android/gms/internal/clearcut/i0;->a([BJ)B

    move-result v4

    if-le v4, v11, :cond_3

    goto :goto_4

    :goto_6
    return v5

    :cond_10
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Array length=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_7
    :pswitch_0
    if-ge v1, v3, :cond_11

    aget-byte v2, v0, v1

    if-ltz v2, :cond_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    if-lt v1, v3, :cond_12

    goto/16 :goto_b

    :cond_12
    :goto_8
    if-lt v1, v3, :cond_13

    goto/16 :goto_b

    :cond_13
    add-int/lit8 v4, v1, 0x1

    aget-byte v5, v0, v1

    if-gez v5, :cond_1c

    const/16 v6, -0x20

    const/4 v7, -0x1

    const/16 v8, -0x41

    if-ge v5, v6, :cond_16

    if-lt v4, v3, :cond_14

    move v2, v5

    goto :goto_b

    :cond_14
    const/16 v6, -0x3e

    if-lt v5, v6, :cond_15

    add-int/lit8 v1, v1, 0x2

    aget-byte v4, v0, v4

    if-le v4, v8, :cond_12

    :cond_15
    :goto_9
    move v2, v7

    goto :goto_b

    :cond_16
    const/16 v9, -0x10

    if-ge v5, v9, :cond_1a

    add-int/lit8 v9, v3, -0x1

    if-lt v4, v9, :cond_17

    :goto_a
    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/clearcut/k0;->b([BII)I

    move-result v2

    goto :goto_b

    :cond_17
    add-int/lit8 v9, v1, 0x2

    aget-byte v4, v0, v4

    if-gt v4, v8, :cond_15

    const/16 v10, -0x60

    if-ne v5, v6, :cond_18

    if-lt v4, v10, :cond_15

    :cond_18
    const/16 v6, -0x13

    if-ne v5, v6, :cond_19

    if-ge v4, v10, :cond_15

    :cond_19
    add-int/lit8 v1, v1, 0x3

    aget-byte v4, v0, v9

    if-le v4, v8, :cond_12

    goto :goto_9

    :cond_1a
    add-int/lit8 v6, v3, -0x2

    if-lt v4, v6, :cond_1b

    goto :goto_a

    :cond_1b
    add-int/lit8 v6, v1, 0x2

    aget-byte v4, v0, v4

    if-gt v4, v8, :cond_15

    shl-int/lit8 v5, v5, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_15

    add-int/lit8 v4, v1, 0x3

    aget-byte v5, v0, v6

    if-gt v5, v8, :cond_15

    add-int/lit8 v1, v1, 0x4

    aget-byte v4, v0, v4

    if-le v4, v8, :cond_12

    goto :goto_9

    :goto_b
    return v2

    :cond_1c
    move v1, v4

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
