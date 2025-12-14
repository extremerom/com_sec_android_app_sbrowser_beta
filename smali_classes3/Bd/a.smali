.class public final LBd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:[I


# instance fields
.field public final a:[B

.field public b:I

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[I

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LBd/a;->n:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, LBd/a;->a:[B

    const/4 v0, 0x0

    iput v0, p0, LBd/a;->b:I

    return-void
.end method

.method public constructor <init>(LBd/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, LBd/a;->a:[B

    iget-object v1, p1, LBd/a;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LBd/a;->b:I

    iput v0, p0, LBd/a;->b:I

    iget-wide v0, p1, LBd/a;->c:J

    iput-wide v0, p0, LBd/a;->c:J

    return-void
.end method

.method public static a(III)I
    .locals 0

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static b(III)I
    .locals 1

    and-int v0, p0, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, v0

    and-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static c(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final e(LBd/a;)V
    .locals 4

    iget-object v0, p1, LBd/a;->a:[B

    iget-object v1, p0, LBd/a;->a:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LBd/a;->b:I

    iput v0, p0, LBd/a;->b:I

    iget-wide v0, p1, LBd/a;->c:J

    iput-wide v0, p0, LBd/a;->c:J

    iget v0, p1, LBd/a;->d:I

    iput v0, p0, LBd/a;->d:I

    iget v0, p1, LBd/a;->e:I

    iput v0, p0, LBd/a;->e:I

    iget v0, p1, LBd/a;->f:I

    iput v0, p0, LBd/a;->f:I

    iget v0, p1, LBd/a;->g:I

    iput v0, p0, LBd/a;->g:I

    iget v0, p1, LBd/a;->h:I

    iput v0, p0, LBd/a;->h:I

    iget v0, p1, LBd/a;->i:I

    iput v0, p0, LBd/a;->i:I

    iget v0, p1, LBd/a;->j:I

    iput v0, p0, LBd/a;->j:I

    iget v0, p1, LBd/a;->k:I

    iput v0, p0, LBd/a;->k:I

    iget-object v0, p0, LBd/a;->l:[I

    iget-object v1, p1, LBd/a;->l:[I

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, LBd/a;->m:I

    iput p1, p0, LBd/a;->m:I

    return-void
.end method

.method public final f(I[B)V
    .locals 6

    iget-wide v0, p0, LBd/a;->c:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_0
    invoke-virtual {p0, v2}, LBd/a;->j(B)V

    iget v2, p0, LBd/a;->b:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, LBd/a;->m:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, LBd/a;->g()V

    :cond_1
    const/16 v2, 0x20

    ushr-long v4, v0, v2

    long-to-int v2, v4

    iget-object v4, p0, LBd/a;->l:[I

    aput v2, v4, v3

    const/16 v2, 0xf

    long-to-int v0, v0

    aput v0, v4, v2

    invoke-virtual {p0}, LBd/a;->g()V

    iget v0, p0, LBd/a;->d:I

    invoke-static {p2, v0, p1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->e:I

    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v0, v1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->f:I

    add-int/lit8 v1, p1, 0x8

    invoke-static {p2, v0, v1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->g:I

    add-int/lit8 v1, p1, 0xc

    invoke-static {p2, v0, v1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->h:I

    add-int/lit8 v1, p1, 0x10

    invoke-static {p2, v0, v1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->i:I

    add-int/lit8 v1, p1, 0x14

    invoke-static {p2, v0, v1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->j:I

    add-int/lit8 v1, p1, 0x18

    invoke-static {p2, v0, v1}, LG5/g2;->c([BII)V

    iget v0, p0, LBd/a;->k:I

    add-int/lit8 p1, p1, 0x1c

    invoke-static {p2, v0, p1}, LG5/g2;->c([BII)V

    invoke-virtual {p0}, LBd/a;->i()V

    return-void
.end method

.method public final g()V
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x10

    move v2, v1

    :goto_0
    iget-object v3, v0, LBd/a;->l:[I

    const/16 v4, 0x3f

    if-gt v2, v4, :cond_0

    add-int/lit8 v4, v2, -0x2

    aget v4, v3, v4

    ushr-int/lit8 v5, v4, 0x11

    shl-int/lit8 v6, v4, 0xf

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v4, 0x13

    shl-int/lit8 v7, v4, 0xd

    or-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v4, v4, 0xa

    xor-int/2addr v4, v5

    add-int/lit8 v5, v2, -0x7

    aget v5, v3, v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v2, -0xf

    aget v5, v3, v5

    ushr-int/lit8 v6, v5, 0x7

    shl-int/lit8 v7, v5, 0x19

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v5, 0x12

    shl-int/lit8 v8, v5, 0xe

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v3, v5

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, LBd/a;->d:I

    iget v4, v0, LBd/a;->e:I

    iget v5, v0, LBd/a;->f:I

    iget v6, v0, LBd/a;->g:I

    iget v7, v0, LBd/a;->h:I

    iget v8, v0, LBd/a;->i:I

    iget v9, v0, LBd/a;->j:I

    iget v10, v0, LBd/a;->k:I

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_1
    const/16 v14, 0x8

    if-ge v12, v14, :cond_1

    invoke-static {v7}, LBd/a;->d(I)I

    move-result v15

    invoke-static {v7, v8, v9}, LBd/a;->a(III)I

    move-result v16

    add-int v16, v16, v15

    sget-object v15, LBd/a;->n:[I

    aget v17, v15, v13

    add-int v16, v16, v17

    aget v17, v3, v13

    add-int v16, v16, v17

    add-int v16, v16, v10

    add-int v6, v6, v16

    invoke-static {v2}, LBd/a;->c(I)I

    move-result v10

    invoke-static {v2, v4, v5}, LBd/a;->b(III)I

    move-result v17

    add-int v17, v17, v10

    add-int v10, v17, v16

    add-int/lit8 v16, v13, 0x1

    invoke-static {v6}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v6, v7, v8}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v3, v16

    add-int v18, v18, v16

    add-int v18, v18, v9

    add-int v5, v5, v18

    invoke-static {v10}, LBd/a;->c(I)I

    move-result v9

    invoke-static {v10, v2, v4}, LBd/a;->b(III)I

    move-result v16

    add-int v16, v16, v9

    add-int v9, v16, v18

    add-int/lit8 v16, v13, 0x2

    invoke-static {v5}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v5, v6, v7}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v3, v16

    add-int v18, v18, v16

    add-int v18, v18, v8

    add-int v4, v4, v18

    invoke-static {v9}, LBd/a;->c(I)I

    move-result v8

    invoke-static {v9, v10, v2}, LBd/a;->b(III)I

    move-result v16

    add-int v16, v16, v8

    add-int v8, v16, v18

    add-int/lit8 v16, v13, 0x3

    invoke-static {v4}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v4, v5, v6}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v3, v16

    add-int v18, v18, v16

    add-int v18, v18, v7

    add-int v2, v2, v18

    invoke-static {v8}, LBd/a;->c(I)I

    move-result v7

    invoke-static {v8, v9, v10}, LBd/a;->b(III)I

    move-result v16

    add-int v16, v16, v7

    add-int v7, v16, v18

    add-int/lit8 v16, v13, 0x4

    invoke-static {v2}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v2, v4, v5}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v3, v16

    add-int v18, v18, v16

    add-int v18, v18, v6

    add-int v10, v10, v18

    invoke-static {v7}, LBd/a;->c(I)I

    move-result v6

    invoke-static {v7, v8, v9}, LBd/a;->b(III)I

    move-result v16

    add-int v16, v16, v6

    add-int v6, v16, v18

    add-int/lit8 v16, v13, 0x5

    invoke-static {v10}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v10, v2, v4}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v3, v16

    add-int v18, v18, v16

    add-int v18, v18, v5

    add-int v9, v9, v18

    invoke-static {v6}, LBd/a;->c(I)I

    move-result v5

    invoke-static {v6, v7, v8}, LBd/a;->b(III)I

    move-result v16

    add-int v16, v16, v5

    add-int v5, v16, v18

    add-int/lit8 v16, v13, 0x6

    invoke-static {v9}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v9, v10, v2}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v3, v16

    add-int v18, v18, v16

    add-int v18, v18, v4

    add-int v8, v8, v18

    invoke-static {v5}, LBd/a;->c(I)I

    move-result v4

    invoke-static {v5, v6, v7}, LBd/a;->b(III)I

    move-result v16

    add-int v16, v16, v4

    add-int v4, v16, v18

    add-int/lit8 v16, v13, 0x7

    invoke-static {v8}, LBd/a;->d(I)I

    move-result v17

    invoke-static {v8, v9, v10}, LBd/a;->a(III)I

    move-result v18

    add-int v18, v18, v17

    aget v15, v15, v16

    add-int v18, v18, v15

    aget v15, v3, v16

    add-int v18, v18, v15

    add-int v18, v18, v2

    add-int v7, v7, v18

    invoke-static {v4}, LBd/a;->c(I)I

    move-result v2

    invoke-static {v4, v5, v6}, LBd/a;->b(III)I

    move-result v15

    add-int/2addr v15, v2

    add-int v2, v15, v18

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_1
    iget v12, v0, LBd/a;->d:I

    add-int/2addr v12, v2

    iput v12, v0, LBd/a;->d:I

    iget v2, v0, LBd/a;->e:I

    add-int/2addr v2, v4

    iput v2, v0, LBd/a;->e:I

    iget v2, v0, LBd/a;->f:I

    add-int/2addr v2, v5

    iput v2, v0, LBd/a;->f:I

    iget v2, v0, LBd/a;->g:I

    add-int/2addr v2, v6

    iput v2, v0, LBd/a;->g:I

    iget v2, v0, LBd/a;->h:I

    add-int/2addr v2, v7

    iput v2, v0, LBd/a;->h:I

    iget v2, v0, LBd/a;->i:I

    add-int/2addr v2, v8

    iput v2, v0, LBd/a;->i:I

    iget v2, v0, LBd/a;->j:I

    add-int/2addr v2, v9

    iput v2, v0, LBd/a;->j:I

    iget v2, v0, LBd/a;->k:I

    add-int/2addr v2, v10

    iput v2, v0, LBd/a;->k:I

    iput v11, v0, LBd/a;->m:I

    move v0, v11

    :goto_2
    if-ge v0, v1, :cond_2

    aput v11, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final h(I[B)V
    .locals 3

    aget-byte v0, p2, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget p2, p0, LBd/a;->m:I

    iget-object v0, p0, LBd/a;->l:[I

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, LBd/a;->m:I

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, LBd/a;->g()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LBd/a;->c:J

    const/4 v0, 0x0

    iput v0, p0, LBd/a;->b:I

    move v1, v0

    :goto_0
    iget-object v2, p0, LBd/a;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x6a09e667

    iput v1, p0, LBd/a;->d:I

    const v1, -0x4498517b

    iput v1, p0, LBd/a;->e:I

    const v1, 0x3c6ef372

    iput v1, p0, LBd/a;->f:I

    const v1, -0x5ab00ac6

    iput v1, p0, LBd/a;->g:I

    const v1, 0x510e527f

    iput v1, p0, LBd/a;->h:I

    const v1, -0x64fa9774

    iput v1, p0, LBd/a;->i:I

    const v1, 0x1f83d9ab

    iput v1, p0, LBd/a;->j:I

    const v1, 0x5be0cd19

    iput v1, p0, LBd/a;->k:I

    iput v0, p0, LBd/a;->m:I

    move v1, v0

    :goto_1
    iget-object v2, p0, LBd/a;->l:[I

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final j(B)V
    .locals 4

    iget v0, p0, LBd/a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LBd/a;->b:I

    iget-object v2, p0, LBd/a;->a:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, LBd/a;->h(I[B)V

    iput p1, p0, LBd/a;->b:I

    :cond_0
    iget-wide v0, p0, LBd/a;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LBd/a;->c:J

    return-void
.end method

.method public final k([BII)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget v1, p0, LBd/a;->b:I

    iget-object v2, p0, LBd/a;->a:[B

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    iget v3, p0, LBd/a;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LBd/a;->b:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    invoke-virtual {p0, v0, v2}, LBd/a;->h(I[B)V

    iput v0, p0, LBd/a;->b:I

    move v0, v5

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    sub-int v1, p3, v0

    and-int/lit8 v1, v1, -0x4

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_3

    add-int v3, p2, v0

    invoke-virtual {p0, v3, p1}, LBd/a;->h(I[B)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, p3, :cond_4

    iget v1, p0, LBd/a;->b:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, LBd/a;->b:I

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_3

    :cond_4
    iget-wide p1, p0, LBd/a;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LBd/a;->c:J

    return-void
.end method
