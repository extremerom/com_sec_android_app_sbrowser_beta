.class public final Lcom/google/crypto/tink/shaded/protobuf/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/f0;


# static fields
.field public static final o:[I

.field public static final p:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/crypto/tink/shaded/protobuf/a;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/crypto/tink/shaded/protobuf/X;

.field public final l:Lcom/google/crypto/tink/shaded/protobuf/M;

.field public final m:Lcom/google/crypto/tink/shaded/protobuf/i0;

.field public final n:Lcom/google/crypto/tink/shaded/protobuf/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/V;->o:[I

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/q0;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/a;Z[IIILcom/google/crypto/tink/shaded/protobuf/X;Lcom/google/crypto/tink/shaded/protobuf/M;Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->c:I

    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->d:I

    instance-of p1, p5, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->f:Z

    iput-boolean p6, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    iput-object p7, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->h:[I

    iput p8, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->i:I

    iput p9, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->j:I

    iput-object p10, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->k:Lcom/google/crypto/tink/shaded/protobuf/X;

    iput-object p11, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    iput-object p12, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    iput-object p5, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->e:Lcom/google/crypto/tink/shaded/protobuf/a;

    iput-object p14, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    return-void
.end method

.method public static A(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static B(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static C(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " not found. Known fields are "

    invoke-static {p0, p1, v2}, LV0/c;->t(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static Q(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V
    .locals 5

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x2

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    iget p0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/s0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    iget v3, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    if-ne v1, v0, :cond_0

    add-int v0, p0, v1

    :try_start_1
    iput v0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v3, v0

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v4, p1, v2, v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->Q(Ljava/lang/String;[BII)I

    move-result v0

    iput p0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int v2, v0, p0

    sub-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iput v0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iget v0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v3, v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->Q(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/s0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_0
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/k;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/k;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_1
    iput p0, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :try_start_2
    array-length p1, p0

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    array-length p1, p0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j;->v0([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/k; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/k;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/k;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :cond_1
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p2, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    :goto_4
    return-void
.end method

.method public static t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static y(Lcom/google/crypto/tink/shaded/protobuf/e0;Lcom/google/crypto/tink/shaded/protobuf/X;Lcom/google/crypto/tink/shaded/protobuf/M;Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/Q;)Lcom/google/crypto/tink/shaded/protobuf/V;
    .locals 1

    instance-of v0, p0, Lcom/google/crypto/tink/shaded/protobuf/e0;

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/V;->z(Lcom/google/crypto/tink/shaded/protobuf/e0;Lcom/google/crypto/tink/shaded/protobuf/X;Lcom/google/crypto/tink/shaded/protobuf/M;Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/Q;)Lcom/google/crypto/tink/shaded/protobuf/V;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static z(Lcom/google/crypto/tink/shaded/protobuf/e0;Lcom/google/crypto/tink/shaded/protobuf/X;Lcom/google/crypto/tink/shaded/protobuf/M;Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/Q;)Lcom/google/crypto/tink/shaded/protobuf/V;
    .locals 35

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->d()Lcom/google/crypto/tink/shaded/protobuf/b0;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/b0;->PROTO3:Lcom/google/crypto/tink/shaded/protobuf/b0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    const/4 v7, 0x1

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_1

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_1

    :cond_1
    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v7, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_4

    and-int/lit16 v8, v8, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v11

    goto :goto_3

    :cond_3
    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    move v7, v11

    :cond_4
    if-nez v8, :cond_5

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/V;->o:[I

    move v9, v2

    move v11, v9

    move v13, v11

    move v14, v13

    move v15, v14

    move-object v12, v8

    move v8, v15

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_6

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_6
    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    move v8, v11

    :cond_7
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_9

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_8
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_9
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_a

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_a
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_b
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_d

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_14

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_b

    :cond_14
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_15
    add-int v2, v15, v13

    add-int/2addr v2, v14

    new-array v2, v2, [I

    mul-int/lit8 v14, v7, 0x2

    add-int/2addr v14, v8

    move v8, v7

    move/from16 v7, v16

    move/from16 v34, v12

    move-object v12, v2

    move v2, v9

    move/from16 v9, v34

    :goto_c
    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->b()[Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->a()Lcom/google/crypto/tink/shaded/protobuf/a;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    mul-int/lit8 v6, v9, 0x3

    new-array v6, v6, [I

    move/from16 v21, v7

    const/4 v7, 0x2

    mul-int/2addr v9, v7

    new-array v9, v9, [Ljava/lang/Object;

    add-int/2addr v13, v15

    move/from16 v25, v13

    move/from16 v24, v15

    const/4 v7, 0x0

    const/16 v22, 0x0

    move/from16 v34, v21

    move/from16 v21, v14

    move/from16 v14, v34

    :goto_d
    if-ge v14, v1, :cond_34

    add-int/lit8 v26, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v27, v1

    const v1, 0xd800

    if-lt v14, v1, :cond_17

    and-int/lit16 v14, v14, 0x1fff

    move/from16 v1, v26

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v29, v13

    const v13, 0xd800

    if-lt v1, v13, :cond_16

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v26

    or-int/2addr v14, v1

    add-int/lit8 v26, v26, 0xd

    move/from16 v1, v28

    move/from16 v13, v29

    goto :goto_e

    :cond_16
    shl-int v1, v1, v26

    or-int/2addr v14, v1

    move/from16 v1, v28

    goto :goto_f

    :cond_17
    move/from16 v29, v13

    move/from16 v1, v26

    :goto_f
    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v26, v13

    const v13, 0xd800

    if-lt v1, v13, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v13, v26

    const/16 v26, 0xd

    :goto_10
    add-int/lit8 v28, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v30, v15

    const v15, 0xd800

    if-lt v13, v15, :cond_18

    and-int/lit16 v13, v13, 0x1fff

    shl-int v13, v13, v26

    or-int/2addr v1, v13

    add-int/lit8 v26, v26, 0xd

    move/from16 v13, v28

    move/from16 v15, v30

    goto :goto_10

    :cond_18
    shl-int v13, v13, v26

    or-int/2addr v1, v13

    move/from16 v13, v28

    goto :goto_11

    :cond_19
    move/from16 v30, v15

    move/from16 v13, v26

    :goto_11
    and-int/lit16 v15, v1, 0xff

    move/from16 v26, v10

    and-int/lit16 v10, v1, 0x400

    if-eqz v10, :cond_1a

    add-int/lit8 v10, v22, 0x1

    aput v7, v12, v22

    move/from16 v22, v10

    :cond_1a
    const/16 v10, 0x33

    if-lt v15, v10, :cond_23

    add-int/lit8 v10, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v13, v10, :cond_1c

    and-int/lit16 v13, v13, 0x1fff

    const/16 v32, 0xd

    move/from16 v34, v28

    move/from16 v28, v13

    move/from16 v13, v34

    :goto_12
    add-int/lit8 v33, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v10, :cond_1b

    and-int/lit16 v10, v13, 0x1fff

    shl-int v10, v10, v32

    or-int v28, v28, v10

    add-int/lit8 v32, v32, 0xd

    move/from16 v13, v33

    const v10, 0xd800

    goto :goto_12

    :cond_1b
    shl-int v10, v13, v32

    or-int v13, v28, v10

    move/from16 v10, v33

    goto :goto_13

    :cond_1c
    move/from16 v10, v28

    :goto_13
    move/from16 v28, v10

    add-int/lit8 v10, v15, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v10, v11, :cond_1d

    const/16 v11, 0x11

    if-ne v10, v11, :cond_1e

    :cond_1d
    move/from16 v33, v2

    const/4 v2, 0x2

    const/4 v11, 0x1

    goto :goto_14

    :cond_1e
    const/16 v11, 0xc

    if-ne v10, v11, :cond_20

    and-int/lit8 v10, v4, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    const/4 v10, 0x3

    move/from16 v33, v2

    const/4 v2, 0x2

    invoke-static {v7, v10, v2, v11}, LV0/c;->x(IIII)I

    move-result v10

    add-int/lit8 v20, v21, 0x1

    aget-object v21, v18, v21

    aput-object v21, v9, v10

    move/from16 v21, v20

    goto :goto_15

    :cond_1f
    move/from16 v33, v2

    const/4 v2, 0x2

    goto :goto_15

    :cond_20
    move/from16 v33, v2

    const/4 v2, 0x2

    const/4 v11, 0x1

    goto :goto_15

    :goto_14
    const/4 v10, 0x3

    invoke-static {v7, v10, v2, v11}, LV0/c;->x(IIII)I

    move-result v10

    add-int/lit8 v11, v21, 0x1

    aget-object v21, v18, v21

    aput-object v21, v9, v10

    move/from16 v21, v11

    :goto_15
    mul-int/2addr v13, v2

    aget-object v2, v18, v13

    instance-of v10, v2, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    aput-object v2, v18, v13

    :goto_16
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v2, v10

    add-int/lit8 v13, v13, 0x1

    aget-object v10, v18, v13

    instance-of v11, v10, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_22

    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_22
    check-cast v10, Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v18, v13

    :goto_17
    invoke-virtual {v5, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v10, v10

    move-object/from16 v23, v0

    move/from16 v31, v1

    move-object/from16 v20, v6

    move/from16 v1, v21

    move/from16 v13, v28

    const v0, 0xd800

    const/4 v11, 0x0

    const/16 v19, 0x2

    goto/16 :goto_22

    :cond_23
    move/from16 v33, v2

    move/from16 v32, v11

    add-int/lit8 v2, v21, 0x1

    aget-object v10, v18, v21

    check-cast v10, Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v11, 0x9

    if-eq v15, v11, :cond_24

    const/16 v11, 0x11

    if-ne v15, v11, :cond_25

    :cond_24
    move/from16 v31, v1

    move-object/from16 v20, v6

    const/4 v1, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1c

    :cond_25
    const/16 v11, 0x1b

    if-eq v15, v11, :cond_26

    const/16 v11, 0x31

    if-ne v15, v11, :cond_27

    :cond_26
    move/from16 v31, v1

    move-object/from16 v20, v6

    const/4 v1, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1b

    :cond_27
    const/16 v11, 0xc

    if-eq v15, v11, :cond_2b

    const/16 v11, 0x1e

    if-eq v15, v11, :cond_2b

    const/16 v11, 0x2c

    if-ne v15, v11, :cond_28

    goto :goto_19

    :cond_28
    const/16 v11, 0x32

    if-ne v15, v11, :cond_2a

    add-int/lit8 v11, v24, 0x1

    aput v7, v12, v24

    div-int/lit8 v24, v7, 0x3

    const/16 v23, 0x2

    mul-int/lit8 v24, v24, 0x2

    add-int/lit8 v31, v21, 0x2

    aget-object v2, v18, v2

    aput-object v2, v9, v24

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_29

    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v2, v21, 0x3

    aget-object v21, v18, v31

    aput-object v21, v9, v24

    move/from16 v31, v1

    move-object/from16 v20, v6

    move/from16 v24, v11

    :goto_18
    const/4 v1, 0x1

    goto :goto_1d

    :cond_29
    move-object/from16 v20, v6

    move/from16 v24, v11

    move/from16 v2, v31

    move/from16 v31, v1

    goto :goto_18

    :cond_2a
    move/from16 v31, v1

    move-object/from16 v20, v6

    goto :goto_18

    :cond_2b
    :goto_19
    and-int/lit8 v11, v4, 0x1

    move/from16 v31, v1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_2c

    const/4 v11, 0x3

    move-object/from16 v20, v6

    const/4 v6, 0x2

    invoke-static {v7, v11, v6, v1}, LV0/c;->x(IIII)I

    move-result v11

    add-int/lit8 v21, v21, 0x2

    aget-object v2, v18, v2

    aput-object v2, v9, v11

    :goto_1a
    move/from16 v2, v21

    goto :goto_1d

    :cond_2c
    move-object/from16 v20, v6

    goto :goto_1d

    :goto_1b
    const/4 v11, 0x3

    invoke-static {v7, v11, v6, v1}, LV0/c;->x(IIII)I

    move-result v11

    add-int/lit8 v21, v21, 0x2

    aget-object v2, v18, v2

    aput-object v2, v9, v11

    goto :goto_1a

    :goto_1c
    const/4 v11, 0x3

    invoke-static {v7, v11, v6, v1}, LV0/c;->x(IIII)I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v9, v11

    :goto_1d
    invoke-virtual {v5, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v6, v10

    and-int/lit8 v10, v4, 0x1

    if-ne v10, v1, :cond_30

    const/16 v10, 0x11

    if-gt v15, v10, :cond_30

    add-int/lit8 v10, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v13, 0xd800

    if-lt v11, v13, :cond_2e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v19, 0xd

    :goto_1e
    add-int/lit8 v21, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v13, :cond_2d

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v19

    or-int/2addr v11, v10

    add-int/lit8 v19, v19, 0xd

    move/from16 v10, v21

    goto :goto_1e

    :cond_2d
    shl-int v10, v10, v19

    or-int/2addr v11, v10

    move/from16 v10, v21

    :cond_2e
    const/16 v19, 0x2

    mul-int/lit8 v21, v8, 0x2

    div-int/lit8 v23, v11, 0x20

    add-int v23, v23, v21

    aget-object v1, v18, v23

    instance-of v13, v1, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_2f

    check-cast v1, Ljava/lang/reflect/Field;

    :goto_1f
    move-object/from16 v23, v0

    goto :goto_20

    :cond_2f
    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->M(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    aput-object v1, v18, v23

    goto :goto_1f

    :goto_20
    invoke-virtual {v5, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v11, v11, 0x20

    move v13, v10

    move v10, v0

    const v0, 0xd800

    goto :goto_21

    :cond_30
    move-object/from16 v23, v0

    const v0, 0xd800

    const/16 v19, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v15, v1, :cond_31

    const/16 v1, 0x31

    if-gt v15, v1, :cond_31

    add-int/lit8 v1, v25, 0x1

    aput v6, v12, v25

    move/from16 v25, v1

    :cond_31
    move v1, v2

    move v2, v6

    :goto_22
    add-int/lit8 v6, v7, 0x1

    aput v14, v20, v7

    add-int/lit8 v14, v7, 0x2

    move/from16 v28, v1

    move/from16 v0, v31

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_23

    :cond_32
    const/4 v1, 0x0

    :goto_23
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_33

    const/high16 v0, 0x10000000

    goto :goto_24

    :cond_33
    const/4 v0, 0x0

    :goto_24
    or-int/2addr v0, v1

    shl-int/lit8 v1, v15, 0x14

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    aput v0, v20, v6

    add-int/lit8 v7, v7, 0x3

    shl-int/lit8 v0, v11, 0x14

    or-int/2addr v0, v10

    aput v0, v20, v14

    move v14, v13

    move-object/from16 v6, v20

    move-object/from16 v0, v23

    move/from16 v10, v26

    move/from16 v1, v27

    move/from16 v21, v28

    move/from16 v13, v29

    move/from16 v15, v30

    move/from16 v11, v32

    move/from16 v2, v33

    goto/16 :goto_d

    :cond_34
    move/from16 v33, v2

    move-object/from16 v20, v6

    move/from16 v26, v10

    move/from16 v32, v11

    move/from16 v29, v13

    move/from16 v30, v15

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/V;

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/e0;->a()Lcom/google/crypto/tink/shaded/protobuf/a;

    move-result-object v1

    move-object v4, v0

    move-object/from16 v5, v20

    move-object v6, v9

    move/from16 v7, v33

    move/from16 v8, v32

    move-object v9, v1

    move-object v11, v12

    move/from16 v12, v30

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v4 .. v18}, Lcom/google/crypto/tink/shaded/protobuf/V;-><init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/a;Z[IIILcom/google/crypto/tink/shaded/protobuf/X;Lcom/google/crypto/tink/shaded/protobuf/M;Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/Q;)V

    return-object v0
.end method


# virtual methods
.method public final D(JILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p4, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/Q;->c(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Q;->e()Lcom/google/crypto/tink/shaded/protobuf/P;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Q;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/P;

    invoke-virtual {v0, p4, p1, p2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Lcom/google/crypto/tink/shaded/protobuf/Q;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v8, p6

    move/from16 v2, p7

    move-wide/from16 v9, p10

    move/from16 v5, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    add-int/lit8 v6, v5, 0x2

    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget v6, v7, v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    int-to-long v13, v6

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_8

    and-int/lit8 v2, p5, -0x8

    or-int/lit8 v6, v2, 0x4

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->q(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_1
    if-nez v2, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    if-nez v2, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_3
    if-nez v2, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_8

    :pswitch_4
    if-ne v2, v6, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->g([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_5
    if-ne v2, v6, :cond_8

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->s(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_2

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_3

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_6
    if-ne v2, v6, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v2, :cond_4

    const-string v2, ""

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_4
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_6

    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->e([BII)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->a()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object v0

    throw v0

    :cond_6
    :goto_4
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_7
    if-nez v2, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_8
    if-ne v2, v7, :cond_8

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x4

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_9
    if-ne v2, v15, :cond_8

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x8

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_a
    if-nez v2, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_b
    if-nez v2, :cond_8

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_c
    if-ne v2, v7, :cond_8

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->o(I[B)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x4

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_d
    if-ne v2, v15, :cond_8

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/U;->i(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x8

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :cond_8
    :goto_7
    move v0, v4

    :goto_8
    return v0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-ge v0, v13, :cond_1b

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->L(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    goto :goto_1

    :cond_0
    move/from16 v28, v3

    move v3, v0

    move/from16 v0, v28

    :goto_1
    ushr-int/lit8 v8, v3, 0x3

    and-int/lit8 v7, v3, 0x7

    iget v4, v15, Lcom/google/crypto/tink/shaded/protobuf/V;->d:I

    move/from16 v18, v0

    iget v0, v15, Lcom/google/crypto/tink/shaded/protobuf/V;->c:I

    move/from16 v19, v3

    const/4 v3, 0x3

    if-le v8, v1, :cond_2

    div-int/2addr v2, v3

    if-lt v8, v0, :cond_1

    if-gt v8, v4, :cond_1

    invoke-virtual {v15, v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->P(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v2, v0

    const/4 v0, -0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_2
    if-lt v8, v0, :cond_3

    if-gt v8, v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v15, v8, v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->P(II)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    const/4 v0, -0x1

    :goto_3
    move v2, v0

    const/4 v0, -0x1

    :goto_4
    if-ne v2, v0, :cond_4

    move/from16 v27, v4

    move/from16 v16, v5

    move-object/from16 v26, v10

    move v7, v11

    move-object v15, v14

    move/from16 v2, v18

    move/from16 v18, v27

    move/from16 v28, v19

    move/from16 v19, v8

    move/from16 v8, v28

    goto/16 :goto_15

    :cond_4
    add-int/lit8 v0, v2, 0x1

    iget-object v1, v15, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget v0, v1, v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v3

    const v20, 0xfffff

    and-int v4, v0, v20

    int-to-long v11, v4

    const/16 v4, 0x11

    move/from16 v22, v0

    if-gt v3, v4, :cond_f

    add-int/lit8 v4, v2, 0x2

    aget v1, v1, v4

    ushr-int/lit8 v4, v1, 0x14

    const/4 v0, 0x1

    shl-int v23, v0, v4

    and-int v1, v1, v20

    const/4 v4, -0x1

    if-eq v1, v6, :cond_6

    if-eq v6, v4, :cond_5

    move/from16 v20, v1

    int-to-long v0, v6

    invoke-virtual {v10, v14, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v0, v20

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    int-to-long v5, v0

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v20, v0

    :goto_6
    move v6, v5

    goto :goto_7

    :cond_6
    move/from16 v20, v6

    goto :goto_6

    :goto_7
    const/4 v0, 0x5

    packed-switch v3, :pswitch_data_0

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v2, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    goto/16 :goto_10

    :pswitch_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_8

    shl-int/lit8 v0, v8, 0x3

    or-int/lit8 v5, v0, 0x4

    invoke-virtual {v15, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    move/from16 v3, v18

    move-object/from16 v1, p2

    move v7, v2

    move v2, v3

    move/from16 v17, v19

    move/from16 v3, p4

    move/from16 v19, v4

    const/16 v18, 0x0

    move v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/U;->q(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_7

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_7
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v1

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    or-int v5, v6, v23

    move-object/from16 v12, p2

    move/from16 v11, p5

    move v2, v7

    move v1, v8

    move/from16 v3, v17

    move/from16 v6, v20

    goto/16 :goto_0

    :cond_8
    move/from16 v3, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    move-object/from16 v12, p2

    move v11, v2

    :cond_9
    :goto_9
    move v2, v3

    goto/16 :goto_10

    :pswitch_1
    move/from16 v3, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    move v4, v2

    if-nez v7, :cond_a

    move-wide v1, v11

    move-object/from16 v12, p2

    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    move-wide/from16 v21, v1

    iget-wide v0, v9, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v24

    move-object v0, v10

    move-wide/from16 v2, v21

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v24

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_a
    or-int v5, v6, v23

    move v0, v7

    :goto_b
    move v1, v8

    move v2, v11

    :goto_c
    move/from16 v3, v17

    move/from16 v6, v20

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    move-object/from16 v12, p2

    move v11, v4

    goto :goto_9

    :pswitch_2
    move/from16 v3, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-nez v7, :cond_9

    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_d
    or-int v5, v6, v23

    goto :goto_b

    :pswitch_3
    move/from16 v3, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-nez v7, :cond_9

    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :pswitch_4
    move/from16 v3, v18

    move/from16 v17, v19

    const/4 v0, 0x2

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-ne v7, v0, :cond_9

    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->g([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_5
    move/from16 v3, v18

    move/from16 v17, v19

    const/4 v0, 0x2

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-ne v7, v0, :cond_9

    invoke-virtual {v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    invoke-static {v0, v12, v3, v13, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->s(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_b

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :cond_b
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_6
    move/from16 v3, v18

    move/from16 v17, v19

    const/4 v0, 0x2

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-ne v7, v0, :cond_9

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_c

    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->F([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_e

    :cond_c
    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->I([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_e
    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_7
    move/from16 v3, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-nez v7, :cond_9

    invoke-static {v12, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_f

    :cond_d
    move/from16 v1, v18

    :goto_f
    invoke-static {v14, v4, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->m(Ljava/lang/Object;JZ)V

    goto/16 :goto_d

    :pswitch_8
    move/from16 v3, v18

    move/from16 v17, v19

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-ne v7, v0, :cond_9

    invoke-static {v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_d

    :pswitch_9
    move/from16 v3, v18

    move/from16 v17, v19

    const/4 v0, 0x1

    const/16 v18, 0x0

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    if-ne v7, v0, :cond_9

    invoke-static {v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v21

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v3

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_d

    :pswitch_a
    move/from16 v17, v19

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v2, v18

    const/16 v18, 0x0

    if-nez v7, :cond_e

    invoke-static {v12, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_b
    move/from16 v17, v19

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v2, v18

    const/16 v18, 0x0

    if-nez v7, :cond_e

    invoke-static {v12, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    iget-wide v2, v9, Lcom/google/android/gms/internal/auth/A;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-wide v2, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_a

    :pswitch_c
    move/from16 v17, v19

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v2, v18

    const/16 v18, 0x0

    if-ne v7, v0, :cond_e

    invoke-static {v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->o(I[B)F

    move-result v0

    invoke-static {v0, v4, v5, v14}, Lcom/google/crypto/tink/shaded/protobuf/q0;->r(FJLjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x4

    goto/16 :goto_d

    :pswitch_d
    move/from16 v17, v19

    const/4 v0, 0x1

    move/from16 v19, v4

    move-wide v4, v11

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v2, v18

    const/16 v18, 0x0

    if-ne v7, v0, :cond_e

    invoke-static {v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->i(I[B)D

    move-result-wide v0

    invoke-static {v4, v5, v14, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->q(JLjava/lang/Object;D)V

    add-int/lit8 v0, v2, 0x8

    goto/16 :goto_d

    :cond_e
    :goto_10
    move/from16 v7, p5

    move/from16 v16, v6

    move/from16 v19, v8

    move-object/from16 v26, v10

    move/from16 v27, v11

    move-object v15, v14

    :goto_11
    move/from16 v8, v17

    move/from16 v6, v20

    goto/16 :goto_15

    :cond_f
    move-wide v0, v11

    move/from16 v17, v19

    const/16 v19, -0x1

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v2, v18

    const/16 v18, 0x0

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_13

    const/4 v4, 0x2

    if-ne v7, v4, :cond_12

    invoke-virtual {v10, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/D;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/b;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/b;->S()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_10

    const/16 v4, 0xa

    goto :goto_12

    :cond_10
    mul-int/lit8 v4, v4, 0x2

    :goto_12
    invoke-interface {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/D;->a(I)Lcom/google/crypto/tink/shaded/protobuf/D;

    move-result-object v3

    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v7, v3

    invoke-virtual {v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    move/from16 v1, v17

    move v4, v2

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v16, v5

    move-object v5, v7

    move/from16 v20, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/U;->t(Lcom/google/crypto/tink/shaded/protobuf/f0;I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move v1, v8

    move v2, v11

    move/from16 v5, v16

    goto/16 :goto_c

    :cond_12
    move/from16 v16, v5

    move/from16 v20, v6

    move v15, v2

    move/from16 v19, v8

    move-object/from16 v26, v10

    move/from16 v27, v11

    goto/16 :goto_13

    :cond_13
    move v4, v2

    move/from16 v16, v5

    move/from16 v20, v6

    const/16 v2, 0x31

    if-gt v3, v2, :cond_15

    move/from16 v2, v22

    int-to-long v5, v2

    move-wide v1, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v23, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v24, v5

    move/from16 v5, v17

    move v6, v8

    move/from16 v19, v8

    move v8, v11

    move-object/from16 v26, v10

    move-wide/from16 v9, v24

    move/from16 v27, v11

    move/from16 v11, v23

    move-wide/from16 v12, v21

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/V;->H(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v15, :cond_14

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v16

    move/from16 v3, v17

    move/from16 v1, v19

    move/from16 v6, v20

    move-object/from16 v10, v26

    move/from16 v2, v27

    goto/16 :goto_0

    :cond_14
    move-object/from16 v15, p1

    move/from16 v7, p5

    move v2, v0

    goto/16 :goto_11

    :cond_15
    move/from16 v23, v3

    move v15, v4

    move/from16 v19, v8

    move-object/from16 v26, v10

    move/from16 v27, v11

    move/from16 v2, v22

    move-wide/from16 v21, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_17

    const/4 v0, 0x2

    if-eq v7, v0, :cond_16

    :goto_13
    move/from16 v7, p5

    move v2, v15

    move/from16 v8, v17

    move/from16 v6, v20

    move-object/from16 v15, p1

    goto/16 :goto_15

    :cond_16
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v21

    move/from16 v13, v27

    invoke-virtual {v14, v10, v11, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/V;->D(JILjava/lang/Object;)V

    const/4 v12, 0x0

    throw v12

    :cond_17
    const/4 v12, 0x0

    move-object/from16 v14, p0

    move v8, v15

    move-wide/from16 v10, v21

    move/from16 v13, v27

    move-object/from16 v15, p1

    move/from16 v21, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move v14, v8

    move/from16 v8, v21

    move v12, v13

    move/from16 v21, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/V;->E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v14, :cond_18

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move-object v14, v15

    move/from16 v5, v16

    move/from16 v3, v17

    move/from16 v1, v19

    move/from16 v6, v20

    move/from16 v2, v21

    move-object/from16 v10, v26

    :goto_14
    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_18
    move/from16 v7, p5

    move v2, v0

    move/from16 v8, v17

    move/from16 v6, v20

    move/from16 v27, v21

    :goto_15
    if-ne v8, v7, :cond_19

    if-eqz v7, :cond_19

    move v0, v2

    move v3, v8

    move/from16 v5, v16

    :goto_16
    const/4 v1, -0x1

    goto :goto_17

    :cond_19
    move-object v0, v15

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne v1, v3, :cond_1a

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_1a
    move-object v4, v1

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/U;->J(I[BIILcom/google/crypto/tink/shaded/protobuf/h0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v11, v7

    move v3, v8

    move-object v14, v15

    move/from16 v5, v16

    move/from16 v1, v19

    move-object/from16 v10, v26

    move/from16 v2, v27

    goto :goto_14

    :cond_1b
    move/from16 v16, v5

    move/from16 v20, v6

    move-object/from16 v26, v10

    move v7, v11

    move-object v15, v14

    goto :goto_16

    :goto_17
    if-eq v6, v1, :cond_1c

    int-to-long v1, v6

    move-object/from16 v4, v26

    invoke-virtual {v4, v15, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1c
    move-object/from16 v1, p0

    iget v2, v1, Lcom/google/crypto/tink/shaded/protobuf/V;->i:I

    :goto_18
    iget v4, v1, Lcom/google/crypto/tink/shaded/protobuf/V;->j:I

    if-ge v2, v4, :cond_1d

    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/V;->h:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v15, v5}, Lcom/google/crypto/tink/shaded/protobuf/V;->l(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_1d
    if-nez v7, :cond_1f

    move/from16 v1, p4

    if-ne v0, v1, :cond_1e

    goto :goto_19

    :cond_1e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object v0

    throw v0

    :cond_1f
    move/from16 v1, p4

    if-gt v0, v1, :cond_20

    if-ne v3, v7, :cond_20

    :goto_19
    return v0

    :cond_20
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/4 v8, 0x0

    move/from16 v0, p3

    move v2, v8

    move v1, v10

    :goto_0
    if-ge v0, v13, :cond_14

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->L(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    move v7, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v7, v3

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v5, v16, 0x7

    iget v0, v15, Lcom/google/crypto/tink/shaded/protobuf/V;->d:I

    iget v3, v15, Lcom/google/crypto/tink/shaded/protobuf/V;->c:I

    if-le v6, v1, :cond_2

    div-int/lit8 v2, v2, 0x3

    if-lt v6, v3, :cond_1

    if-gt v6, v0, :cond_1

    invoke-virtual {v15, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->P(II)I

    move-result v0

    goto :goto_2

    :cond_1
    move v0, v10

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_2
    if-lt v6, v3, :cond_1

    if-gt v6, v0, :cond_1

    invoke-virtual {v15, v6, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->P(II)I

    move-result v0

    goto :goto_2

    :goto_3
    if-ne v4, v10, :cond_3

    move/from16 v19, v6

    move v2, v7

    move/from16 v17, v8

    move/from16 v24, v17

    move-object/from16 v18, v9

    move/from16 v25, v10

    move-object v15, v14

    goto/16 :goto_12

    :cond_3
    add-int/lit8 v0, v4, 0x1

    iget-object v1, v15, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget v3, v1, v0

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v2

    const v0, 0xfffff

    and-int/2addr v0, v3

    int-to-long v0, v0

    const/16 v8, 0x11

    const/4 v10, 0x2

    if-gt v2, v8, :cond_a

    const/4 v8, 0x5

    packed-switch v2, :pswitch_data_0

    :cond_4
    move/from16 v24, v4

    move/from16 v19, v6

    move v15, v7

    :goto_4
    move-object/from16 v18, v9

    :goto_5
    const/16 v17, 0x0

    const/16 v25, -0x1

    goto/16 :goto_10

    :pswitch_0
    if-nez v5, :cond_4

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->c(J)J

    move-result-wide v19

    move-wide v2, v0

    move-object v0, v9

    move-object/from16 v1, p1

    move v8, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v6

    move v0, v7

    :goto_6
    move v2, v8

    :goto_7
    const/4 v8, 0x0

    const/4 v10, -0x1

    goto/16 :goto_0

    :pswitch_1
    move-wide v2, v0

    move v8, v4

    if-nez v5, :cond_5

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/i;->b(I)I

    move-result v1

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    move v1, v6

    goto :goto_6

    :cond_5
    move/from16 v19, v6

    move v15, v7

    move/from16 v24, v8

    goto :goto_4

    :pswitch_2
    move-wide v2, v0

    move v8, v4

    if-nez v5, :cond_5

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-wide v2, v0

    move v8, v4

    if-ne v5, v10, :cond_5

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->g([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-wide v2, v0

    move v8, v4

    if-ne v5, v10, :cond_5

    invoke-virtual {v15, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    invoke-static {v0, v12, v7, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->s(Lcom/google/crypto/tink/shaded/protobuf/f0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_6
    iget-object v4, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v1

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_5
    move-wide v1, v0

    move v8, v4

    if-ne v5, v10, :cond_5

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_7

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->F([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_9

    :cond_7
    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->I([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_9
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_6
    move-wide v1, v0

    move v8, v4

    if-nez v5, :cond_5

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v19, 0x0

    cmp-long v3, v3, v19

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_a

    :cond_8
    const/4 v3, 0x0

    :goto_a
    invoke-static {v14, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/q0;->m(Ljava/lang/Object;JZ)V

    goto :goto_8

    :pswitch_7
    move-wide v1, v0

    move v10, v4

    if-ne v5, v8, :cond_9

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->k(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    add-int/lit8 v0, v7, 0x4

    :goto_c
    move v1, v6

    :goto_d
    move v2, v10

    goto/16 :goto_7

    :cond_9
    move/from16 v19, v6

    move v15, v7

    move-object/from16 v18, v9

    move/from16 v24, v10

    goto/16 :goto_5

    :pswitch_8
    move-wide v1, v0

    move v10, v4

    const/4 v0, 0x1

    if-ne v5, v0, :cond_9

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->m(I[B)J

    move-result-wide v4

    move-object v0, v9

    move-wide v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_e
    add-int/lit8 v0, v7, 0x8

    goto :goto_c

    :pswitch_9
    move-wide v2, v0

    move v10, v4

    if-nez v5, :cond_9

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->M([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :pswitch_a
    move-wide v2, v0

    move v10, v4

    if-nez v5, :cond_9

    invoke-static {v12, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/U;->O([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    iget-wide v4, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v6

    move v0, v7

    goto :goto_d

    :pswitch_b
    move-wide v2, v0

    move v10, v4

    if-ne v5, v8, :cond_9

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->o(I[B)F

    move-result v0

    invoke-static {v0, v2, v3, v14}, Lcom/google/crypto/tink/shaded/protobuf/q0;->r(FJLjava/lang/Object;)V

    goto :goto_b

    :pswitch_c
    move-wide v2, v0

    move v10, v4

    const/4 v0, 0x1

    if-ne v5, v0, :cond_9

    invoke-static {v7, v12}, Lcom/google/crypto/tink/shaded/protobuf/U;->i(I[B)D

    move-result-wide v0

    invoke-static {v2, v3, v14, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->q(JLjava/lang/Object;D)V

    goto :goto_e

    :cond_a
    move v8, v4

    const/16 v4, 0x1b

    if-ne v2, v4, :cond_d

    if-ne v5, v10, :cond_5

    invoke-virtual {v9, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/D;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/b;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/b;->S()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    const/16 v3, 0xa

    goto :goto_f

    :cond_b
    mul-int/lit8 v3, v3, 0x2

    :goto_f
    invoke-interface {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/D;->a(I)Lcom/google/crypto/tink/shaded/protobuf/D;

    move-result-object v2

    invoke-virtual {v9, v14, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_c
    move-object v5, v2

    invoke-virtual {v15, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move/from16 v19, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/U;->t(Lcom/google/crypto/tink/shaded/protobuf/f0;I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move v2, v8

    move/from16 v1, v19

    goto/16 :goto_7

    :cond_d
    move/from16 v19, v6

    const/16 v4, 0x31

    if-gt v2, v4, :cond_f

    int-to-long v3, v3

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v10, v2

    move-object/from16 v2, p2

    move-wide/from16 v22, v3

    move v3, v7

    move/from16 v4, p4

    move v6, v5

    move/from16 v5, v16

    move/from16 p3, v6

    move/from16 v6, v19

    move v15, v7

    move/from16 v7, p3

    move/from16 v24, v8

    const/16 v17, 0x0

    move-object/from16 v18, v9

    move/from16 v26, v10

    const/16 v25, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v26

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/V;->H(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v15, :cond_e

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v10, v25

    goto/16 :goto_0

    :cond_e
    move-object/from16 v15, p1

    move v2, v0

    goto/16 :goto_12

    :cond_f
    move-wide/from16 v20, v0

    move/from16 v26, v2

    move/from16 p3, v5

    move v15, v7

    move/from16 v24, v8

    move-object/from16 v18, v9

    const/16 v17, 0x0

    const/16 v25, -0x1

    const/16 v0, 0x32

    move/from16 v9, v26

    if-ne v9, v0, :cond_11

    move/from16 v7, p3

    if-eq v7, v10, :cond_10

    :goto_10
    move v2, v15

    move-object/from16 v15, p1

    goto :goto_12

    :cond_10
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v20

    move/from16 v13, v24

    invoke-virtual {v14, v10, v11, v13, v15}, Lcom/google/crypto/tink/shaded/protobuf/V;->D(JILjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_11
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v12, v15

    move-wide/from16 v10, v20

    move/from16 v13, v24

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v3

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v19

    move v14, v12

    move v12, v13

    move/from16 v20, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/V;->E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v14, :cond_12

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v1, v19

    move/from16 v2, v20

    :goto_11
    move/from16 v10, v25

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_12
    move v2, v0

    move/from16 v24, v20

    :goto_12
    move-object v0, v15

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne v1, v3, :cond_13

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_13
    move-object v4, v1

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/U;->J(I[BIILcom/google/crypto/tink/shaded/protobuf/h0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v1, v19

    move/from16 v2, v24

    goto :goto_11

    :cond_14
    move v1, v13

    if-ne v0, v1, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->e()Lcom/google/crypto/tink/shaded/protobuf/G;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/crypto/tink/shaded/protobuf/D;

    check-cast v10, Lcom/google/crypto/tink/shaded/protobuf/b;

    invoke-virtual {v10}, Lcom/google/crypto/tink/shaded/protobuf/b;->S()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v11, v12

    :goto_0
    invoke-interface {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/D;->a(I)Lcom/google/crypto/tink/shaded/protobuf/D;

    move-result-object v10

    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x5

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_f

    invoke-virtual {p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/U;->r(Lcom/google/crypto/tink/shaded/protobuf/f0;I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v12, :cond_2

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->A([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->E(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v12, :cond_3

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->z([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->D(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v12, :cond_4

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->B([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_f

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->N(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    :goto_1
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    move/from16 v4, p6

    invoke-static {v4, v10, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/g0;->z(ILjava/util/List;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/i0;)Ljava/lang/Object;

    if-eqz v3, :cond_6

    iput-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->h(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v12, :cond_f

    invoke-virtual {p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/U;->t(Lcom/google/crypto/tink/shaded/protobuf/f0;I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v12, :cond_f

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_7

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->G(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_7
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->H(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v12, :cond_8

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->u([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_8
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->f(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v12, :cond_9

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->w([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_9
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->l(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v12, :cond_a

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->x([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_a
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->n(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v12, :cond_b

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->B([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->N(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :pswitch_b
    if-ne v2, v12, :cond_c

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->C([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :cond_c
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->P(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :pswitch_c
    if-ne v2, v12, :cond_d

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->y([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :cond_d
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->p(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :pswitch_d
    if-ne v2, v12, :cond_e

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/U;->v([BILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :cond_e
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/U;->j(I[BIILcom/google/crypto/tink/shaded/protobuf/D;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_3

    :cond_f
    :goto_2
    move v0, v4

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Ljava/lang/Object;JLN/h;Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p4, LN/h;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    :cond_0
    invoke-virtual {p4, p5, p6}, LN/h;->z(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, LN/h;->e:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p4, LN/h;->d:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p4, LN/h;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0
.end method

.method public final J(Ljava/lang/Object;ILN/h;Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p3, LN/h;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-virtual {p3, p4, p5}, LN/h;->H(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p3, LN/h;->e:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p3, LN/h;->d:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p3, LN/h;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/G;->b()Lcom/google/crypto/tink/shaded/protobuf/F;

    move-result-object p0

    throw p0
.end method

.method public final K(Ljava/lang/Object;ILN/h;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    if-eqz v0, :cond_1

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, LN/h;->W()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->f:Z

    if-eqz p0, :cond_2

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, LN/h;->S()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, LN/h;->l()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final L(Ljava/lang/Object;ILN/h;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, LN/h;->V(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, LN/h;->T(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public final N(ILjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    or-int/2addr p0, p1

    invoke-static {v0, v1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    return-void
.end method

.method public final O(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    return-void
.end method

.method public final P(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final R(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final S(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v4, v3

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v4, :cond_5

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v10

    aget v11, v3, v8

    invoke-static {v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v12

    iget-boolean v13, v0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    const v14, 0xfffff

    if-nez v13, :cond_1

    const/16 v13, 0x11

    if-gt v12, v13, :cond_1

    add-int/lit8 v13, v8, 0x2

    aget v13, v3, v13

    and-int v6, v13, v14

    if-eq v6, v7, :cond_0

    int-to-long v14, v6

    invoke-virtual {v5, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v7, v6

    :cond_0
    ushr-int/lit8 v6, v13, 0x14

    const/4 v13, 0x1

    shl-int v6, v13, v6

    :goto_1
    const v13, 0xfffff

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :goto_2
    and-int/2addr v10, v13

    int-to-long v13, v10

    packed-switch v12, :pswitch_data_0

    :cond_2
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v6, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->a(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v6, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v6, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(FI)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v11, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v6, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v2, v12, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(DI)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_14
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x1

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    :goto_4
    move v12, v11

    goto/16 :goto_5

    :pswitch_23
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto :goto_4

    :pswitch_28
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_29
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-static {v6, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/g0;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto :goto_5

    :pswitch_3d
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v6, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->a(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(II)V

    goto :goto_5

    :pswitch_41
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v6, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-virtual {v2, v6, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(FI)V

    goto :goto_5

    :pswitch_44
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_4

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v6, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v13

    invoke-virtual {v2, v13, v14, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(DI)V

    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->d(Lcom/google/crypto/tink/shaded/protobuf/l;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->k:Lcom/google/crypto/tink/shaded/protobuf/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->e:Lcom/google/crypto/tink/shaded/protobuf/a;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/z;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_MUTABLE_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->i:I

    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->h:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->j:I

    if-ge v0, v3, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v1

    const v3, 0xfffff

    and-int/2addr v1, v3

    int-to-long v3, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/P;

    iput-boolean v2, v5, Lcom/google/crypto/tink/shaded/protobuf/P;->a:Z

    invoke-static {v3, v4, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_2
    if-ge v3, v0, :cond_2

    aget v4, v1, v3

    int-to-long v4, v4

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    invoke-virtual {v6, v4, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/M;->a(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    iput-boolean v2, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->e:Z

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->i:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_f

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->h:[I

    aget v4, v4, v2

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget v7, v6, v4

    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v8

    const v9, 0xfffff

    iget-boolean v10, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    if-nez v10, :cond_0

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    and-int v11, v6, v9

    ushr-int/lit8 v6, v6, 0x14

    shl-int v6, v5, v6

    if-eq v11, v0, :cond_1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    int-to-long v12, v11

    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v0, v11

    goto :goto_1

    :cond_0
    move v6, v1

    :cond_1
    :goto_1
    const/high16 v11, 0x10000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_4

    if-eqz v10, :cond_2

    invoke-virtual {p0, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    goto :goto_2

    :cond_2
    and-int v11, v3, v6

    if-eqz v11, :cond_3

    move v11, v5

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-nez v11, :cond_4

    return v1

    :cond_4
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_b

    const/16 v12, 0x11

    if-eq v11, v12, :cond_b

    const/16 v5, 0x1b

    if-eq v11, v5, :cond_8

    const/16 v5, 0x3c

    if-eq v11, v5, :cond_7

    const/16 v5, 0x44

    if-eq v11, v5, :cond_7

    const/16 v5, 0x31

    if-eq v11, v5, :cond_8

    const/16 v5, 0x32

    if-eq v11, v5, :cond_5

    goto/16 :goto_5

    :cond_5
    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v7, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/P;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0, v7, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v7, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/f0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    return v1

    :cond_8
    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v7, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    move v6, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/google/crypto/tink/shaded/protobuf/f0;->c(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    return v1

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual {p0, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_c
    and-int/2addr v6, v3

    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    move v5, v1

    :goto_4
    if-eqz v5, :cond_e

    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v7, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/f0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    return v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v5
.end method

.method public final d(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V
    .locals 13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/u0;->ASCENDING:Lcom/google/crypto/tink/shaded/protobuf/u0;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/u0;->DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/u0;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    const v5, 0xfffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->d(Lcom/google/crypto/tink/shaded/protobuf/l;)V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    :goto_0
    if-ltz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v1

    aget v8, v2, v0

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(IJ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(IJ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(II)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(II)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->a(IZ)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(IJ)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(II)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(IJ)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1, v8}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(FI)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v8, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {p2, v9, v10, v8}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(DI)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v1, v5

    int-to-long v8, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    throw v3

    :pswitch_13
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v9

    invoke-static {v8, v1, p2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_14
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_15
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_16
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_17
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_18
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_19
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_1a
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_1b
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_1c
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_1d
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_1e
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_1f
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_20
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_21
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_22
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_23
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_24
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_25
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_26
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_27
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_28
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_1

    :pswitch_29
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v9

    invoke-static {v8, v1, p2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_2a
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_1

    :pswitch_2b
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_2c
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_2d
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_2e
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_2f
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_30
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_31
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_32
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(IJ)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(II)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(IJ)V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(II)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(II)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->a(IZ)V

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)V

    goto :goto_1

    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(IJ)V

    goto :goto_1

    :pswitch_40
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(II)V

    goto :goto_1

    :pswitch_41
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)V

    goto :goto_1

    :pswitch_42
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(IJ)V

    goto :goto_1

    :pswitch_43
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v1

    invoke-virtual {p2, v1, v8}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(FI)V

    goto :goto_1

    :pswitch_44
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {p2, v9, v10, v8}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(DI)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x3

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    if-eqz v0, :cond_6

    array-length v0, v2

    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v9

    aget v10, v2, v1

    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_45
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_46
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(IJ)V

    goto/16 :goto_3

    :pswitch_47
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(II)V

    goto/16 :goto_3

    :pswitch_48
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(IJ)V

    goto/16 :goto_3

    :pswitch_49
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(II)V

    goto/16 :goto_3

    :pswitch_4a
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(II)V

    goto/16 :goto_3

    :pswitch_4b
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)V

    goto/16 :goto_3

    :pswitch_4c
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    goto/16 :goto_3

    :pswitch_4d
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_4e
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_4f
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->a(IZ)V

    goto/16 :goto_3

    :pswitch_50
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)V

    goto/16 :goto_3

    :pswitch_51
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(IJ)V

    goto/16 :goto_3

    :pswitch_52
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(II)V

    goto/16 :goto_3

    :pswitch_53
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)V

    goto/16 :goto_3

    :pswitch_54
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(IJ)V

    goto/16 :goto_3

    :pswitch_55
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p2, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(FI)V

    goto/16 :goto_3

    :pswitch_56
    invoke-virtual {p0, v10, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p2, v11, v12, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(DI)V

    goto/16 :goto_3

    :pswitch_57
    and-int/2addr v9, v5

    int-to-long v9, v9

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v11, v9, v10, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    throw v3

    :pswitch_58
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_59
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_5a
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_5b
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_5c
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_5d
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_5e
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_5f
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_60
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_61
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_62
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_63
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_64
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_65
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_66
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_67
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_68
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_69
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_6a
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_6b
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_6c
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_6d
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_6e
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/crypto/tink/shaded/protobuf/g0;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_6f
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_70
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_71
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_72
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_73
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_74
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_75
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_76
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_77
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V

    goto/16 :goto_3

    :pswitch_78
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_79
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(IJ)V

    goto/16 :goto_3

    :pswitch_7a
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(II)V

    goto/16 :goto_3

    :pswitch_7b
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->m(IJ)V

    goto/16 :goto_3

    :pswitch_7c
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(II)V

    goto/16 :goto_3

    :pswitch_7d
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(II)V

    goto/16 :goto_3

    :pswitch_7e
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)V

    goto/16 :goto_3

    :pswitch_7f
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(ILcom/google/crypto/tink/shaded/protobuf/h;)V

    goto/16 :goto_3

    :pswitch_80
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_81
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->T(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto/16 :goto_3

    :pswitch_82
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->a(IZ)V

    goto/16 :goto_3

    :pswitch_83
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)V

    goto :goto_3

    :pswitch_84
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(IJ)V

    goto :goto_3

    :pswitch_85
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(II)V

    goto :goto_3

    :pswitch_86
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)V

    goto :goto_3

    :pswitch_87
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(IJ)V

    goto :goto_3

    :pswitch_88
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v9

    invoke-virtual {p2, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(FI)V

    goto :goto_3

    :pswitch_89
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v11, v12, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v11

    invoke-virtual {p2, v11, v12, v10}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(DI)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/h0;->d(Lcom/google/crypto/tink/shaded/protobuf/l;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->S(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;LN/h;Lcom/google/crypto/tink/shaded/protobuf/o;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/V;->u(Lcom/google/crypto/tink/shaded/protobuf/i0;Ljava/lang/Object;LN/h;Lcom/google/crypto/tink/shaded/protobuf/o;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/V;->G(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->F(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I

    :goto_0
    return-void
.end method

.method public final g(Lcom/google/crypto/tink/shaded/protobuf/z;)I
    .locals 11

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/google/crypto/tink/shaded/protobuf/a;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->q(Lcom/google/crypto/tink/shaded/protobuf/a;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->p(Lcom/google/crypto/tink/shaded/protobuf/a;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final i(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    aget v1, v1, v0

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->x(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->x(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/g0;->a:Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/Q;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/P;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    invoke-virtual {v1, p1, p2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/M;->b(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->w(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->w(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->m(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->r(FJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {v3, v4, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->q(JLjava/lang/Object;D)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->B(Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p1, p2, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget p3, p3, p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p3, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    return-void
.end method

.method public final m(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, LV0/c;->x(IIII)I

    move-result p1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/f0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/c0;->c:Lcom/google/crypto/tink/shaded/protobuf/c0;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/c0;->a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final p(Lcom/google/crypto/tink/shaded/protobuf/a;)I
    .locals 14

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v7, v6

    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v7

    aget v8, v6, v3

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v9

    const/16 v10, 0x11

    const v11, 0xfffff

    if-gt v9, v10, :cond_0

    add-int/lit8 v10, v3, 0x2

    aget v6, v6, v10

    and-int v10, v6, v11

    ushr-int/lit8 v6, v6, 0x14

    const/4 v12, 0x1

    shl-int v6, v12, v6

    if-eq v10, v2, :cond_1

    int-to-long v12, v10

    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v2, v10

    goto :goto_1

    :cond_0
    move v6, v1

    :cond_1
    :goto_1
    and-int/2addr v7, v11

    int-to-long v10, v7

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->f0(ILcom/google/crypto/tink/shaded/protobuf/a;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v6

    :goto_2
    add-int/2addr v4, v6

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->m0(IJ)I

    move-result v6

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->l0(II)I

    move-result v6

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->k0(I)I

    move-result v6

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->j0(I)I

    move-result v6

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->b0(II)I

    move-result v6

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->q0(II)I

    move-result v6

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v6

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->o(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v6

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v7, :cond_2

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v6

    :goto_3
    add-int/2addr v6, v4

    move v4, v6

    goto/16 :goto_4

    :cond_2
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->n0(ILjava/lang/String;)I

    move-result v6

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->X(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->c0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->d0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->g0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->s0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->i0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->e0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, v8, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->a0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/Q;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_13
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->j(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->t(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->r(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_17
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_18
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->e(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_19
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->w(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1a
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->b(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1b
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1c
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1d
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->l(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1e
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->y(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1f
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->n(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_20
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_21
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_22
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->s(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->q(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->h(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->f(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->d(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->v(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->p(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->u(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->a(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->f(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->h(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->k(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->x(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_30
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->m(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->f(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/g0;->h(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_33
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->f0(ILcom/google/crypto/tink/shaded/protobuf/a;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_34
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->m0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_35
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->l0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_36
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->k0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_37
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->j0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_38
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->b0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_39
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->q0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3a
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3b
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/g0;->o(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3c
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v7, :cond_3

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v6

    goto/16 :goto_3

    :cond_3
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->n0(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3

    :pswitch_3d
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->X(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3e
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->c0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3f
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->d0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_40
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->g0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_41
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->s0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_42
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->i0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_43
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->e0(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_44
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->a0(I)I

    move-result v6

    goto/16 :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->a()I

    move-result p0

    add-int/2addr p0, v4

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Lcom/google/crypto/tink/shaded/protobuf/a;)I
    .locals 9

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/V;->p:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v5

    aget v6, v3, v1

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/t;->DOUBLE_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/t;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/t;->a()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/t;->SINT64_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/t;

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/t;->a()I

    move-result v4

    if-gt v5, v4, :cond_0

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    :cond_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->f0(ILcom/google/crypto/tink/shaded/protobuf/a;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    :goto_1
    add-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->m0(IJ)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->l0(II)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->k0(I)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->j0(I)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->b0(II)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->q0(II)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/g0;->o(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->n0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->X(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->c0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->d0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->B(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->g0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->s0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->C(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->i0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->e0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->a0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_12
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Q;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/g0;->j(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->r(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->w(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->l(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, Landroidx/recyclerview/widget/P;->z(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->s(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->q(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->v(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/g0;->p(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->k(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->x(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->m(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/V;->t(Lcom/google/crypto/tink/shaded/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/g0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->f0(ILcom/google/crypto/tink/shaded/protobuf/a;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->j(Lcom/google/crypto/tink/shaded/protobuf/a;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->m0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->i(Lcom/google/crypto/tink/shaded/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->l0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->k0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->j0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->i(Lcom/google/crypto/tink/shaded/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->b0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->i(Lcom/google/crypto/tink/shaded/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->q0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/g0;->o(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v3

    goto/16 :goto_1

    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->n0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->X(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->c0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->d0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->i(Lcom/google/crypto/tink/shaded/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->g0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->j(Lcom/google/crypto/tink/shaded/protobuf/a;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->s0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/q0;->j(Lcom/google/crypto/tink/shaded/protobuf/a;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->i0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->e0(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->a0(I)I

    move-result v3

    goto/16 :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->m:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->a()I

    move-result p0

    add-int/2addr p0, v2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(ILjava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->g:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result p0

    const-wide/16 v4, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :pswitch_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :pswitch_2
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :pswitch_3
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :pswitch_4
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    :pswitch_5
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :pswitch_6
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :pswitch_8
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    :pswitch_9
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_8
    instance-of p1, p0, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    move v2, v3

    :cond_a
    return v2

    :pswitch_c
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_b

    move v2, v3

    :cond_b
    return v2

    :pswitch_d
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    move v2, v3

    :cond_c
    return v2

    :pswitch_e
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_d

    move v2, v3

    :cond_d
    return v2

    :pswitch_f
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_e

    move v2, v3

    :cond_e
    return v2

    :pswitch_10
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->f(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_f

    move v2, v3

    :cond_f
    return v2

    :pswitch_11
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->e(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_10

    move v2, v3

    :cond_10
    return v2

    :cond_11
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    shl-int p1, v3, p1

    and-int/2addr p0, v1

    int-to-long v0, p0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v2, v3

    :cond_12
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/p0;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u(Lcom/google/crypto/tink/shaded/protobuf/i0;Ljava/lang/Object;LN/h;Lcom/google/crypto/tink/shaded/protobuf/o;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    iget-object v12, v8, Lcom/google/crypto/tink/shaded/protobuf/V;->h:[I

    iget v13, v8, Lcom/google/crypto/tink/shaded/protobuf/V;->j:I

    iget v14, v8, Lcom/google/crypto/tink/shaded/protobuf/V;->i:I

    const/4 v15, 0x0

    move-object v7, v15

    :goto_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, LN/h;->b()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/V;->c:I

    if-lt v1, v2, :cond_0

    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/V;->d:I

    if-gt v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->P(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_2

    :goto_1
    move/from16 v16, v14

    move-object v14, v7

    goto/16 :goto_c

    :cond_0
    const/4 v2, -0x1

    :goto_2
    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-gez v2, :cond_9

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    :goto_3
    if-ge v14, v13, :cond_1

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->l(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v10

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_2
    return-void

    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_5

    move-object v1, v10

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne v2, v6, :cond_4

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v2

    iput-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_4
    move-object v7, v2

    goto :goto_5

    :goto_4
    move/from16 v16, v14

    goto/16 :goto_13

    :cond_5
    :goto_5
    invoke-static {v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/i0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    :goto_6
    if-ge v14, v13, :cond_7

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->l(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    if-eqz v7, :cond_8

    move-object v0, v10

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_8
    return-void

    :cond_9
    :try_start_3
    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->Q(I)I

    move-result v4
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/F; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v5, v8, Lcom/google/crypto/tink/shaded/protobuf/V;->l:Lcom/google/crypto/tink/shaded/protobuf/M;

    packed-switch v4, :pswitch_data_0

    if-nez v7, :cond_a

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/i0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v7

    goto :goto_8

    :catch_0
    move-object v15, v6

    :goto_7
    move/from16 v16, v14

    goto/16 :goto_f

    :cond_a
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/i0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_5
    .catch Lcom/google/crypto/tink/shaded/protobuf/F; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_c

    :goto_9
    if-ge v14, v13, :cond_b

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->l(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_b
    move-object v0, v10

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    return-void

    :cond_c
    move/from16 v16, v14

    goto/16 :goto_12

    :pswitch_0
    :try_start_6
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, LN/h;->B(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    :goto_a
    move/from16 v16, v14

    move-object v14, v7

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto :goto_4

    :pswitch_1
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->Q()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_2
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->O()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_3
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->M()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->K()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    invoke-virtual/range {p3 .. p3}, LN/h;->p()I

    move-result v4

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V
    :try_end_6
    .catch Lcom/google/crypto/tink/shaded/protobuf/F; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v16, v6

    :try_start_7
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v10, v3}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto :goto_a

    :catch_1
    move-object/from16 v15, v16

    goto/16 :goto_7

    :pswitch_6
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->X()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->l()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_8
    move-object/from16 v16, v6

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v4

    invoke-static {v4, v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, LN/h;->J(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v5

    invoke-static {v5, v6, v10, v4}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_d
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v5

    invoke-virtual {v0, v5, v11}, LN/h;->J(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    :goto_b
    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v16, v6

    invoke-virtual {v8, v10, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->K(Ljava/lang/Object;ILN/h;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_b
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->s()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_c
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->u()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_d
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->C()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_e
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->Z()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_f
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->E()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_10
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->w()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_11
    move-object/from16 v16, v6

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->n()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3, v4, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_12
    move-object/from16 v16, v6

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->n(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v2, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/V;->v(ILjava/lang/Object;Ljava/lang/Object;)V

    throw v15
    :try_end_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/F; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :pswitch_13
    move-object/from16 v16, v6

    :try_start_8
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v6
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/F; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v15, v16

    move/from16 v16, v14

    move-object v14, v7

    move-object/from16 v7, p4

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->I(Ljava/lang/Object;JLN/h;Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)V

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    :goto_c
    move-object v7, v14

    goto/16 :goto_13

    :catch_2
    move-object v7, v14

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    move/from16 v16, v14

    move-object v14, v7

    goto/16 :goto_13

    :catch_3
    move-object/from16 v15, v16

    :goto_d
    move/from16 v16, v14

    move-object v14, v7

    goto/16 :goto_f

    :pswitch_14
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->R(Ljava/util/List;)V

    goto :goto_e

    :pswitch_15
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->P(Ljava/util/List;)V

    goto :goto_e

    :pswitch_16
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->N(Ljava/util/List;)V

    goto :goto_e

    :pswitch_17
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->L(Ljava/util/List;)V

    goto :goto_e

    :pswitch_18
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, LN/h;->q(Ljava/util/List;)V

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    invoke-static {v1, v3, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->z(ILjava/util/List;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/i0;)Ljava/lang/Object;

    :goto_e
    move-object v7, v14

    goto/16 :goto_12

    :pswitch_19
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->Y(Ljava/util/List;)V

    goto :goto_e

    :pswitch_1a
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->i(Ljava/util/List;)V

    goto :goto_e

    :pswitch_1b
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->t(Ljava/util/List;)V

    goto :goto_e

    :pswitch_1c
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->v(Ljava/util/List;)V

    goto :goto_e

    :pswitch_1d
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->D(Ljava/util/List;)V

    goto :goto_e

    :pswitch_1e
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->a0(Ljava/util/List;)V

    goto :goto_e

    :pswitch_1f
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->F(Ljava/util/List;)V

    goto :goto_e

    :pswitch_20
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->x(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_21
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->o(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_22
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->R(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_23
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->P(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_24
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->N(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_25
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->L(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_26
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, LN/h;->q(Ljava/util/List;)V

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    invoke-static {v1, v3, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->z(ILjava/util/List;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/i0;)Ljava/lang/Object;

    goto/16 :goto_e

    :pswitch_27
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->Y(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_28
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->m(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_29
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/V;->J(Ljava/lang/Object;ILN/h;Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)V

    goto/16 :goto_e

    :pswitch_2a
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-virtual {v8, v10, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->L(Ljava/lang/Object;ILN/h;)V

    goto/16 :goto_e

    :pswitch_2b
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->i(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2c
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->t(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2d
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->v(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2e
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->D(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2f
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->a0(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_30
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->F(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_31
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->x(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_32
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/M;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->o(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_33
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v4

    invoke-static {v4, v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, LN/h;->B(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v1

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v2

    invoke-static {v2, v3, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_e
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, LN/h;->B(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_34
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->Q()J

    move-result-wide v5

    invoke-static {v10, v3, v4, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_35
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->O()I

    move-result v1

    invoke-static {v3, v4, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_36
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->M()J

    move-result-wide v5

    invoke-static {v10, v3, v4, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_37
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->K()I

    move-result v1

    invoke-static {v3, v4, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_38
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-virtual/range {p3 .. p3}, LN/h;->p()I

    move-result v1

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->m(I)V

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_39
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->X()I

    move-result v1

    invoke-static {v3, v4, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3a
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->l()Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v1

    invoke-static {v3, v4, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3b
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v4

    invoke-static {v4, v5, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, LN/h;->J(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v1

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v2

    invoke-static {v2, v3, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_f
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/V;->o(I)Lcom/google/crypto/tink/shaded/protobuf/f0;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, LN/h;->J(Lcom/google/crypto/tink/shaded/protobuf/f0;Lcom/google/crypto/tink/shaded/protobuf/o;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3c
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-virtual {v8, v10, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/V;->K(Ljava/lang/Object;ILN/h;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3d
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->h()Z

    move-result v1

    invoke-static {v10, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->m(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3e
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->s()I

    move-result v1

    invoke-static {v3, v4, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3f
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->u()J

    move-result-wide v5

    invoke-static {v10, v3, v4, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_40
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->C()I

    move-result v1

    invoke-static {v3, v4, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->s(JILjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_41
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->Z()J

    move-result-wide v5

    invoke-static {v10, v3, v4, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_42
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->E()J

    move-result-wide v5

    invoke-static {v10, v3, v4, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q0;->t(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_43
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->w()F

    move-result v1

    invoke-static {v1, v3, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/q0;->r(FJLjava/lang/Object;)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_44
    move-object v15, v6

    move/from16 v16, v14

    move-object v14, v7

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/V;->A(I)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, LN/h;->n()D

    move-result-wide v5

    invoke-static {v3, v4, v10, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q0;->q(JLjava/lang/Object;D)V

    invoke-virtual {v8, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V
    :try_end_9
    .catch Lcom/google/crypto/tink/shaded/protobuf/F; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_e

    :catch_4
    move-object v15, v6

    goto/16 :goto_d

    :goto_f
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_11

    move-object v1, v10

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne v2, v15, :cond_10

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object v2

    iput-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    goto :goto_10

    :catchall_3
    move-exception v0

    goto :goto_13

    :cond_10
    :goto_10
    move-object v7, v2

    :cond_11
    invoke-static {v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/i0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v1, :cond_14

    move/from16 v14, v16

    :goto_11
    if-ge v14, v13, :cond_12

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->l(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :cond_12
    if-eqz v7, :cond_13

    move-object v0, v10

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_13
    return-void

    :cond_14
    :goto_12
    move/from16 v14, v16

    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    goto/16 :goto_1

    :goto_13
    move/from16 v14, v16

    :goto_14
    if-ge v14, v13, :cond_15

    aget v1, v12, v14

    invoke-virtual {v8, v1, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/V;->l(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    :cond_15
    if-eqz v7, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v10

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iput-object v7, v1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_16
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result p1

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->n:Lcom/google/crypto/tink/shaded/protobuf/Q;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Q;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/P;->b:Lcom/google/crypto/tink/shaded/protobuf/P;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/P;->c()Lcom/google/crypto/tink/shaded/protobuf/P;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Q;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/P;

    invoke-static {v0, v1, p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/P;->b:Lcom/google/crypto/tink/shaded/protobuf/P;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/P;->c()Lcom/google/crypto/tink/shaded/protobuf/P;

    move-result-object p1

    invoke-static {v0, v1, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/P;

    invoke-static {p3}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;I)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->r(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->N(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final x(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;I)V
    .locals 5

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/V;->R(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/V;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/q0;->d:Lcom/google/crypto/tink/shaded/protobuf/p0;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/p0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/E;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p2

    invoke-static {v2, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v2, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/q0;->u(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/V;->O(IILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
