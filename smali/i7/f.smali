.class public final Li7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li7/y;

.field public final b:Li7/y;

.field public final c:Li7/y;

.field public final d:Li7/y;

.field public final e:Li7/B;

.field public final f:Li7/B;

.field public final g:Li7/B;

.field public final h:Li7/l;

.field public final i:Li7/v;

.field public final j:Li7/d;

.field public final k:Li7/y;

.field public final l:Li7/y;

.field public final m:Li7/B;

.field public final n:[Li7/C;

.field public o:I


# direct methods
.method public constructor <init>(Lz7/d;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Li7/B;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Li7/B;-><init>(Li7/f;I)V

    iput-object v1, v0, Li7/f;->m:Li7/B;

    new-instance v3, Li7/y;

    sget-object v4, Li7/x;->NONE:Li7/x;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {v3, v5, v0, v6, v4}, Li7/y;-><init>(Ljava/lang/String;Li7/f;ILi7/x;)V

    iput-object v3, v0, Li7/f;->b:Li7/y;

    new-instance v7, Li7/y;

    sget-object v8, Li7/x;->TYPE:Li7/x;

    const-string v9, "word_data"

    invoke-direct {v7, v9, v0, v6, v8}, Li7/y;-><init>(Ljava/lang/String;Li7/f;ILi7/x;)V

    iput-object v7, v0, Li7/f;->a:Li7/y;

    new-instance v9, Li7/y;

    sget-object v10, Li7/x;->INSTANCE:Li7/x;

    const-string v11, "string_data"

    const/4 v12, 0x1

    invoke-direct {v9, v11, v0, v12, v10}, Li7/y;-><init>(Ljava/lang/String;Li7/f;ILi7/x;)V

    iput-object v9, v0, Li7/f;->d:Li7/y;

    new-instance v10, Li7/y;

    invoke-direct {v10, v5, v0, v12, v4}, Li7/y;-><init>(Ljava/lang/String;Li7/f;ILi7/x;)V

    iput-object v10, v0, Li7/f;->k:Li7/y;

    new-instance v5, Li7/y;

    const-string v11, "byte_data"

    invoke-direct {v5, v11, v0, v12, v8}, Li7/y;-><init>(Ljava/lang/String;Li7/f;ILi7/x;)V

    iput-object v5, v0, Li7/f;->l:Li7/y;

    new-instance v8, Li7/B;

    invoke-direct {v8, v0, v12}, Li7/B;-><init>(Li7/f;I)V

    iput-object v8, v0, Li7/f;->e:Li7/B;

    new-instance v11, Li7/B;

    const/4 v13, 0x2

    invoke-direct {v11, v0, v13}, Li7/B;-><init>(Li7/f;I)V

    iput-object v11, v0, Li7/f;->f:Li7/B;

    new-instance v14, Li7/B;

    const/4 v15, 0x0

    invoke-direct {v14, v0, v15}, Li7/B;-><init>(Li7/f;I)V

    iput-object v14, v0, Li7/f;->g:Li7/B;

    new-instance v2, Li7/l;

    invoke-direct {v2, v0}, Li7/l;-><init>(Li7/f;)V

    iput-object v2, v0, Li7/f;->h:Li7/l;

    new-instance v13, Li7/v;

    invoke-direct {v13, v0}, Li7/v;-><init>(Li7/f;)V

    iput-object v13, v0, Li7/f;->i:Li7/v;

    new-instance v12, Li7/d;

    invoke-direct {v12, v0}, Li7/d;-><init>(Li7/f;)V

    iput-object v12, v0, Li7/f;->j:Li7/d;

    new-instance v15, Li7/y;

    move-object/from16 v16, v10

    const-string v10, "map"

    invoke-direct {v15, v10, v0, v6, v4}, Li7/y;-><init>(Ljava/lang/String;Li7/f;ILi7/x;)V

    iput-object v15, v0, Li7/f;->c:Li7/y;

    const/16 v4, 0xd

    new-array v4, v4, [Li7/C;

    const/4 v10, 0x0

    aput-object v1, v4, v10

    const/4 v1, 0x1

    aput-object v8, v4, v1

    const/4 v1, 0x2

    aput-object v11, v4, v1

    const/4 v1, 0x3

    aput-object v14, v4, v1

    aput-object v2, v4, v6

    const/4 v1, 0x5

    aput-object v13, v4, v1

    const/4 v1, 0x6

    aput-object v12, v4, v1

    const/4 v1, 0x7

    aput-object v7, v4, v1

    const/16 v1, 0x8

    aput-object v3, v4, v1

    const/16 v1, 0x9

    aput-object v9, v4, v1

    const/16 v1, 0xa

    aput-object v5, v4, v1

    const/16 v1, 0xb

    aput-object v16, v4, v1

    const/16 v1, 0xc

    aput-object v15, v4, v1

    iput-object v4, v0, Li7/f;->n:[Li7/C;

    const/4 v1, -0x1

    iput v1, v0, Li7/f;->o:I

    return-void
.end method


# virtual methods
.method public final a(Ll7/a;)V
    .locals 1

    instance-of v0, p1, Ll7/t;

    if-eqz v0, :cond_0

    iget-object p0, p0, Li7/f;->e:Li7/B;

    check-cast p1, Ll7/t;

    invoke-virtual {p0, p1}, Li7/B;->o(Ll7/t;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ll7/u;

    if-eqz v0, :cond_1

    iget-object p0, p0, Li7/f;->f:Li7/B;

    check-cast p1, Ll7/u;

    invoke-virtual {p0, p1}, Li7/B;->p(Ll7/u;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ll7/q;

    if-eqz v0, :cond_2

    iget-object p0, p0, Li7/f;->i:Li7/v;

    check-cast p1, Ll7/q;

    invoke-virtual {p0, p1}, Li7/v;->m(Ll7/q;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ll7/h;

    if-eqz v0, :cond_3

    iget-object p0, p0, Li7/f;->h:Li7/l;

    check-cast p1, Ll7/h;

    invoke-virtual {p0, p1}, Li7/l;->m(Ll7/h;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cst == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .locals 12

    iget-object v0, p0, Li7/f;->j:Li7/d;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->k:Li7/y;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->a:Li7/y;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->l:Li7/y;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->i:Li7/v;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->h:Li7/l;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->g:Li7/B;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->b:Li7/y;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->f:Li7/B;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->e:Li7/B;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->d:Li7/y;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->m:Li7/B;

    invoke-virtual {v0}, Li7/C;->d()V

    iget-object v0, p0, Li7/f;->n:[Li7/C;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const-string v5, "...while writing section "

    if-ge v3, v1, :cond_5

    aget-object v6, v0, v3

    if-ltz v4, :cond_4

    iget v7, v6, Li7/C;->d:I

    if-gez v7, :cond_3

    iget v7, v6, Li7/C;->c:I

    add-int/lit8 v7, v7, -0x1

    add-int v8, v4, v7

    not-int v7, v7

    and-int/2addr v7, v8

    iput v7, v6, Li7/C;->d:I

    if-lt v7, v4, :cond_2

    iget-object v4, p0, Li7/f;->c:Li7/y;

    if-ne v6, v4, :cond_0

    :try_start_0
    invoke-static {v0, v4}, Li7/r;->o([Li7/C;Li7/y;)V

    invoke-virtual {v4}, Li7/C;->d()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    instance-of v4, v6, Li7/y;

    if-eqz v4, :cond_1

    move-object v4, v6

    check-cast v4, Li7/y;

    invoke-virtual {v4}, Li7/y;->m()V

    :cond_1
    invoke-virtual {v6}, Li7/C;->h()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ln7/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ln7/d;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "bogus placement for section "

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset already set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileOffset < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iput v4, p0, Li7/f;->o:I

    new-array v3, v4, [B

    new-instance v6, Ln7/b;

    invoke-direct {v6, v3, v2}, Ln7/b;-><init>([BZ)V

    :goto_3
    const/16 v7, 0xa

    if-ge v2, v1, :cond_a

    const/4 v8, 0x0

    :try_start_1
    aget-object v9, v0, v2

    invoke-virtual {v9}, Li7/C;->b()I

    move-result v10

    iget v11, v6, Ln7/b;->c:I

    sub-int/2addr v10, v11

    if-ltz v10, :cond_6

    invoke-virtual {v9}, Li7/C;->b()I

    move-result v10

    iget v11, v6, Ln7/b;->c:I

    sub-int/2addr v10, v11

    invoke-virtual {v6, v10}, Ln7/b;->n(I)V

    invoke-virtual {v9, v6}, Li7/C;->i(Ln7/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_6
    new-instance p0, Ln7/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "excess write of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    instance-of v0, p0, Ln7/d;

    if-eqz v0, :cond_7

    check-cast p0, Ln7/d;

    goto :goto_5

    :cond_7
    new-instance v0, Ln7/d;

    invoke-direct {v0, v8, p0}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p0, v0

    :goto_5
    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Ln7/d;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    throw p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "str == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    iget v0, v6, Ln7/b;->c:I

    iget p0, p0, Li7/f;->o:I

    if-ne v0, p0, :cond_c

    const-string p0, "unexpected digest write: "

    :try_start_2
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v1, v4, -0x20

    const/16 v2, 0x20

    invoke-virtual {v0, v3, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_3
    invoke-virtual {v0, v3, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0
    :try_end_3
    .catch Ljava/security/DigestException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v0, v2, :cond_b

    new-instance p0, Ljava/util/zip/Adler32;

    invoke-direct {p0}, Ljava/util/zip/Adler32;-><init>()V

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v1, v4}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {p0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int p0, v0

    int-to-byte v0, p0

    const/16 v1, 0x8

    aput-byte v0, v3, v1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/16 v1, 0x9

    aput-byte v0, v3, v1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/16 v0, 0xb

    aput-byte p0, v3, v0

    iget-object p0, v6, Ln7/b;->b:[B

    return-object p0

    :cond_b
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "foreshortened write"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
