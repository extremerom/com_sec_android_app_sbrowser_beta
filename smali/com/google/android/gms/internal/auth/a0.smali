.class public final Lcom/google/android/gms/internal/auth/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/i0;


# static fields
.field public static final l:[I

.field public static final m:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/auth/x;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lcom/google/android/gms/internal/auth/S;

.field public final k:Lcom/google/android/gms/internal/auth/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/auth/a0;->l:[I

    invoke-static {}, Lcom/google/android/gms/internal/auth/s0;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/x;Z[IIILcom/google/android/gms/internal/auth/S;Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/a0;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/auth/a0;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/auth/a0;->d:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/auth/a0;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/auth/a0;->g:[I

    iput p8, p0, Lcom/google/android/gms/internal/auth/a0;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/auth/a0;->i:I

    iput-object p10, p0, Lcom/google/android/gms/internal/auth/a0;->j:Lcom/google/android/gms/internal/auth/S;

    iput-object p11, p0, Lcom/google/android/gms/internal/auth/a0;->k:Lcom/google/android/gms/internal/auth/l0;

    iput-object p5, p0, Lcom/google/android/gms/internal/auth/a0;->e:Lcom/google/android/gms/internal/auth/x;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v5, v2, p1, v3, p0}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " not found. Known fields are "

    invoke-static {v5, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static i(Lcom/google/android/gms/internal/auth/h0;Lcom/google/android/gms/internal/auth/S;Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/W;)Lcom/google/android/gms/internal/auth/a0;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/h0;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/a0;->q(Lcom/google/android/gms/internal/auth/h0;Lcom/google/android/gms/internal/auth/S;Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/W;)Lcom/google/android/gms/internal/auth/a0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static q(Lcom/google/android/gms/internal/auth/h0;Lcom/google/android/gms/internal/auth/S;Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/W;)Lcom/google/android/gms/internal/auth/a0;
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/h0;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v4, 0xd800

    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_2

    move v1, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_4

    and-int/lit16 v5, v5, 0x1fff

    const/16 v7, 0xd

    :goto_2
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_3

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v7

    or-int/2addr v5, v1

    add-int/lit8 v7, v7, 0xd

    move v1, v8

    goto :goto_2

    :cond_3
    shl-int/2addr v1, v7

    or-int/2addr v5, v1

    move v1, v8

    :cond_4
    if-nez v5, :cond_5

    sget-object v5, Lcom/google/android/gms/internal/auth/a0;->l:[I

    move v7, v2

    move v8, v7

    move v9, v8

    move v11, v9

    move v13, v11

    move v15, v13

    move-object v12, v5

    move v5, v15

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_7

    and-int/lit16 v1, v1, 0x1fff

    const/16 v7, 0xd

    :goto_3
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v7

    or-int/2addr v1, v5

    add-int/lit8 v7, v7, 0xd

    move v5, v8

    goto :goto_3

    :cond_6
    shl-int/2addr v5, v7

    or-int/2addr v1, v5

    move v5, v8

    :cond_7
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_9

    and-int/lit16 v5, v5, 0x1fff

    const/16 v8, 0xd

    :goto_4
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v4, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_4

    :cond_8
    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    move v7, v9

    :cond_9
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v4, :cond_b

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_5
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v4, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_5

    :cond_a
    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    move v8, v11

    :cond_b
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v4, :cond_d

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_6
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_6

    :cond_c
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_d
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v4, :cond_f

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_7
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v4, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_7

    :cond_e
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_f
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v4, :cond_11

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_8
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_8

    :cond_10
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_11
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_13

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_9
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v4, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_9

    :cond_12
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_13
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v4, :cond_15

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_a
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v4, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_a

    :cond_14
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_15
    add-int v15, v13, v11

    add-int/2addr v15, v12

    new-array v12, v15, [I

    add-int v15, v1, v1

    add-int/2addr v15, v5

    move v5, v1

    move v1, v14

    :goto_b
    sget-object v14, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/h0;->c()[Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/h0;->a()Lcom/google/android/gms/internal/auth/x;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v6, v9, 0x3

    new-array v6, v6, [I

    add-int/2addr v9, v9

    new-array v9, v9, [Ljava/lang/Object;

    add-int v18, v13, v11

    move/from16 v20, v13

    move/from16 v21, v18

    const/4 v11, 0x0

    const/16 v19, 0x0

    :goto_c
    const/16 v3, 0xc

    if-ge v1, v3, :cond_32

    add-int/lit8 v23, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_17

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v3, v23

    const/16 v23, 0xd

    :goto_d
    add-int/lit8 v25, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_16

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v23

    or-int/2addr v1, v3

    add-int/lit8 v23, v23, 0xd

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    shl-int v3, v3, v23

    or-int/2addr v1, v3

    move/from16 v3, v25

    goto :goto_e

    :cond_17
    move/from16 v3, v23

    :goto_e
    add-int/lit8 v23, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v4, :cond_19

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_f
    add-int/lit8 v26, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v13

    const v13, 0xd800

    if-lt v4, v13, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v3, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v26

    move/from16 v13, v27

    goto :goto_f

    :cond_18
    shl-int v4, v4, v23

    or-int/2addr v3, v4

    move/from16 v4, v26

    goto :goto_10

    :cond_19
    move/from16 v27, v13

    move/from16 v4, v23

    :goto_10
    and-int/lit16 v13, v3, 0xff

    move/from16 v23, v8

    and-int/lit16 v8, v3, 0x400

    if-eqz v8, :cond_1a

    add-int/lit8 v8, v19, 0x1

    aput v11, v12, v19

    move/from16 v19, v8

    :cond_1a
    const/16 v8, 0x33

    move/from16 v26, v7

    if-lt v13, v8, :cond_22

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v7, 0xd800

    if-lt v4, v7, :cond_1c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v29, 0xd

    :goto_11
    add-int/lit8 v30, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1b

    and-int/lit16 v7, v8, 0x1fff

    shl-int v7, v7, v29

    or-int/2addr v4, v7

    add-int/lit8 v29, v29, 0xd

    move/from16 v8, v30

    const v7, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v7, v8, v29

    or-int/2addr v4, v7

    move/from16 v8, v30

    :cond_1c
    add-int/lit8 v7, v13, -0x33

    move/from16 v29, v8

    const/16 v8, 0x9

    if-eq v7, v8, :cond_1e

    const/16 v8, 0x11

    if-ne v7, v8, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v8, 0xc

    if-ne v7, v8, :cond_1f

    if-nez v10, :cond_1f

    div-int/lit8 v7, v11, 0x3

    add-int/lit8 v8, v15, 0x1

    add-int/2addr v7, v7

    const/16 v22, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v15, v16, v15

    aput-object v15, v9, v7

    :goto_12
    move v15, v8

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v7, v11, 0x3

    add-int/lit8 v8, v15, 0x1

    add-int/2addr v7, v7

    const/16 v22, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v15, v16, v15

    aput-object v15, v9, v7

    goto :goto_12

    :cond_1f
    :goto_14
    add-int/2addr v4, v4

    aget-object v7, v16, v4

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_20

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v7, Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/auth/a0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v16, v4

    :goto_15
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    add-int/lit8 v4, v4, 0x1

    aget-object v8, v16, v4

    move/from16 v24, v7

    instance-of v7, v8, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/auth/a0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v16, v4

    :goto_16
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v4, v7

    move-object/from16 v28, v0

    move/from16 v7, v24

    const/16 v22, 0x1

    move/from16 v24, v4

    const/4 v4, 0x0

    move/from16 v31, v29

    move/from16 v29, v1

    move/from16 v1, v31

    goto/16 :goto_22

    :cond_22
    add-int/lit8 v7, v15, 0x1

    aget-object v8, v16, v15

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/auth/a0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move/from16 v29, v1

    const/16 v1, 0x9

    if-eq v13, v1, :cond_23

    const/16 v1, 0x11

    if-ne v13, v1, :cond_24

    :cond_23
    const/16 v22, 0x1

    goto/16 :goto_1b

    :cond_24
    const/16 v1, 0x1b

    if-eq v13, v1, :cond_25

    const/16 v1, 0x31

    if-ne v13, v1, :cond_26

    :cond_25
    const/16 v22, 0x1

    goto :goto_1a

    :cond_26
    const/16 v1, 0xc

    if-eq v13, v1, :cond_2a

    const/16 v1, 0x1e

    if-eq v13, v1, :cond_2a

    const/16 v1, 0x2c

    if-ne v13, v1, :cond_27

    goto :goto_18

    :cond_27
    const/16 v1, 0x32

    if-ne v13, v1, :cond_29

    add-int/lit8 v1, v20, 0x1

    aput v11, v12, v20

    div-int/lit8 v20, v11, 0x3

    add-int v20, v20, v20

    add-int/lit8 v24, v15, 0x2

    aget-object v7, v16, v7

    aput-object v7, v9, v20

    and-int/lit16 v7, v3, 0x800

    if-eqz v7, :cond_28

    add-int/lit8 v7, v15, 0x3

    add-int/lit8 v20, v20, 0x1

    aget-object v15, v16, v24

    aput-object v15, v9, v20

    move/from16 v20, v1

    move v1, v7

    :goto_17
    const/16 v22, 0x1

    goto :goto_1d

    :cond_28
    move/from16 v20, v1

    move/from16 v1, v24

    goto :goto_17

    :cond_29
    const/16 v22, 0x1

    goto :goto_1c

    :cond_2a
    :goto_18
    if-nez v10, :cond_29

    div-int/lit8 v1, v11, 0x3

    add-int/lit8 v15, v15, 0x2

    add-int/2addr v1, v1

    const/16 v22, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v7, v16, v7

    aput-object v7, v9, v1

    :goto_19
    move v1, v15

    goto :goto_1d

    :goto_1a
    div-int/lit8 v1, v11, 0x3

    add-int/lit8 v15, v15, 0x2

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v7, v16, v7

    aput-object v7, v9, v1

    goto :goto_19

    :goto_1b
    div-int/lit8 v1, v11, 0x3

    add-int/2addr v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v9, v1

    :goto_1c
    move v1, v7

    :goto_1d
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    and-int/lit16 v8, v3, 0x1000

    const/16 v15, 0x1000

    const v24, 0xfffff

    if-ne v8, v15, :cond_2e

    const/16 v8, 0x11

    if-gt v13, v8, :cond_2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v15, 0xd800

    if-lt v4, v15, :cond_2c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v24, 0xd

    :goto_1e
    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v15, :cond_2b

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v4, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_1e

    :cond_2b
    shl-int v8, v8, v24

    or-int/2addr v4, v8

    move/from16 v8, v25

    :cond_2c
    add-int v24, v5, v5

    div-int/lit8 v25, v4, 0x20

    add-int v25, v25, v24

    aget-object v15, v16, v25

    move-object/from16 v28, v0

    instance-of v0, v15, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2d

    check-cast v15, Ljava/lang/reflect/Field;

    :goto_1f
    move/from16 v25, v1

    goto :goto_20

    :cond_2d
    check-cast v15, Ljava/lang/String;

    invoke-static {v2, v15}, Lcom/google/android/gms/internal/auth/a0;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    aput-object v15, v16, v25

    goto :goto_1f

    :goto_20
    invoke-virtual {v14, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v4, v4, 0x20

    move/from16 v24, v0

    goto :goto_21

    :cond_2e
    move-object/from16 v28, v0

    move/from16 v25, v1

    move v8, v4

    const/4 v4, 0x0

    :goto_21
    const/16 v0, 0x12

    if-lt v13, v0, :cond_2f

    const/16 v0, 0x31

    if-gt v13, v0, :cond_2f

    add-int/lit8 v0, v21, 0x1

    aput v7, v12, v21

    move/from16 v21, v0

    :cond_2f
    move v1, v8

    move/from16 v15, v25

    :goto_22
    add-int/lit8 v0, v11, 0x1

    aput v29, v6, v11

    add-int/lit8 v8, v11, 0x2

    move/from16 v25, v1

    and-int/lit16 v1, v3, 0x200

    if-eqz v1, :cond_30

    const/high16 v1, 0x20000000

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    :goto_23
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_31

    const/high16 v3, 0x10000000

    goto :goto_24

    :cond_31
    const/4 v3, 0x0

    :goto_24
    or-int/2addr v1, v3

    shl-int/lit8 v3, v13, 0x14

    or-int/2addr v1, v3

    or-int/2addr v1, v7

    aput v1, v6, v0

    add-int/lit8 v11, v11, 0x3

    shl-int/lit8 v0, v4, 0x14

    or-int v0, v0, v24

    aput v0, v6, v8

    move/from16 v8, v23

    move/from16 v1, v25

    move/from16 v7, v26

    move/from16 v13, v27

    move-object/from16 v0, v28

    const v4, 0xd800

    goto/16 :goto_c

    :cond_32
    move/from16 v26, v7

    move/from16 v23, v8

    move/from16 v27, v13

    new-instance v0, Lcom/google/android/gms/internal/auth/a0;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/h0;->a()Lcom/google/android/gms/internal/auth/x;

    move-result-object v1

    move-object v4, v0

    move-object v5, v6

    move-object v6, v9

    move-object v9, v1

    move-object v11, v12

    move/from16 v12, v27

    move/from16 v13, v18

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/internal/auth/a0;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/x;Z[IIILcom/google/android/gms/internal/auth/S;Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/W;)V

    return-object v0
.end method

.method public static r(Lcom/google/android/gms/internal/auth/I;J)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static x(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static z(Lcom/google/android/gms/internal/auth/I;J)J
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final B(I)Lcom/google/android/gms/internal/auth/i0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/i0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/f0;->c:Lcom/google/android/gms/internal/auth/f0;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/f0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;I)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    :cond_3
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;I)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget v2, v1, p3

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {p0, v2, p3, p2}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2, p3, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v4, v5, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v0, v4, v5, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object p0

    invoke-static {v4, v5, p1, p0}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p1, p2, p3, v2}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {v4, v5, p1, p2}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p1, p2, p3, v2}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    :cond_4
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/auth/I;I)V
    .locals 4

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p2

    ushr-int/lit8 p0, p0, 0x14

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/auth/C;->c:Lcom/google/android/gms/internal/auth/C;

    sget-object p1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/C;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/auth/C;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/auth/C;->c:Lcom/google/android/gms/internal/auth/C;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/C;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->f(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->b(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/auth/r0;->a(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v2, v3, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v6, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

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

.method public final g(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    :goto_0
    iget-object v8, v15, Lcom/google/android/gms/internal/auth/a0;->a:[I

    if-ge v0, v13, :cond_1d

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/auth/Z;->s(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    goto :goto_1

    :cond_0
    move/from16 v30, v1

    move v1, v0

    move/from16 v0, v30

    :goto_1
    ushr-int/lit8 v6, v1, 0x3

    and-int/lit8 v7, v1, 0x7

    move/from16 p3, v0

    iget v0, v15, Lcom/google/android/gms/internal/auth/a0;->d:I

    move/from16 v19, v1

    iget v1, v15, Lcom/google/android/gms/internal/auth/a0;->c:I

    const/4 v11, 0x3

    if-le v6, v2, :cond_2

    div-int/2addr v3, v11

    if-lt v6, v1, :cond_1

    if-gt v6, v0, :cond_1

    invoke-virtual {v15, v6, v3}, Lcom/google/android/gms/internal/auth/a0;->w(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v2, v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_2
    if-lt v6, v1, :cond_3

    if-gt v6, v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v15, v6, v3}, Lcom/google/android/gms/internal/auth/a0;->w(II)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v0, -0x1

    :goto_3
    move v2, v0

    const/4 v1, -0x1

    :goto_4
    if-ne v2, v1, :cond_4

    move/from16 v2, p3

    move/from16 v18, v3

    move/from16 v29, v18

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v17, v6

    move-object/from16 v16, v8

    move-object/from16 v28, v10

    move-object v15, v14

    move/from16 v7, v19

    move/from16 v6, p5

    move/from16 v19, v1

    goto/16 :goto_15

    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget v0, v8, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result v11

    const v16, 0xfffff

    and-int v1, v0, v16

    int-to-long v12, v1

    const/16 v1, 0x11

    if-gt v11, v1, :cond_11

    add-int/lit8 v1, v2, 0x2

    aget v1, v8, v1

    ushr-int/lit8 v21, v1, 0x14

    const/4 v3, 0x1

    shl-int v21, v3, v21

    move-object/from16 v23, v8

    const v8, 0xfffff

    and-int/2addr v1, v8

    if-eq v1, v5, :cond_6

    if-eq v5, v8, :cond_5

    int-to-long v8, v5

    invoke-virtual {v10, v14, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v4, v1

    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v9, v1

    move v8, v4

    goto :goto_5

    :cond_6
    move v8, v4

    move v9, v5

    :goto_5
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    const/4 v4, 0x3

    if-ne v7, v4, :cond_8

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    shl-int/lit8 v1, v6, 0x3

    or-int/lit8 v4, v1, 0x4

    move/from16 v11, p3

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move v5, v2

    move v2, v11

    const/16 v18, 0x0

    move/from16 v3, p4

    move v11, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/Z;->g(Lcom/google/android/gms/internal/auth/i0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v8, v21

    if-nez v1, :cond_7

    move-object/from16 v4, p6

    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_7
    move-object/from16 v4, p6

    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object v1

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v1, v8, v21

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v2, v6

    move v5, v9

    move v3, v11

    move/from16 v11, p5

    move-object v9, v4

    move v4, v1

    move v1, v7

    goto/16 :goto_0

    :cond_8
    move/from16 v11, p3

    move-object/from16 v4, p6

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v12, p2

    move/from16 p3, v9

    move/from16 v13, v19

    move v9, v2

    :cond_9
    :goto_7
    move/from16 v19, v6

    goto/16 :goto_11

    :pswitch_0
    move/from16 v11, p3

    move-object/from16 v4, p6

    move v5, v2

    move/from16 v2, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    if-nez v7, :cond_a

    move-wide v0, v12

    move-object/from16 v12, p2

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    move-wide/from16 v19, v0

    iget-wide v0, v4, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/Z;->h(J)J

    move-result-wide v22

    move-wide/from16 v24, v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v13, v2

    move-wide/from16 v2, v24

    move-object v11, v4

    move/from16 p3, v9

    move v9, v5

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v8, v21

    move/from16 v5, p3

    move v2, v6

    move v0, v7

    move v3, v9

    move-object v9, v11

    move v1, v13

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    move-object/from16 v12, p2

    move v13, v2

    move/from16 p3, v9

    move v9, v5

    goto :goto_7

    :pswitch_1
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move-wide/from16 v24, v12

    move/from16 v13, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v12, p2

    move v9, v2

    if-nez v7, :cond_9

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v4, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/Z;->d(I)I

    move-result v1

    move-wide/from16 v2, v24

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v1, v8, v21

    move/from16 v5, p3

    move/from16 v11, p5

    move v2, v6

    move v3, v9

    :goto_9
    move-object v9, v4

    move v4, v1

    move v1, v13

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_2
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide v2, v12

    move/from16 v13, v19

    move-object/from16 v12, p2

    if-nez v7, :cond_9

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v4, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/auth/a0;->A(I)V

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/4 v0, 0x2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide v2, v12

    move/from16 v13, v19

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_9

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->a([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/4 v0, 0x2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide v2, v12

    move/from16 v13, v19

    move-object/from16 v12, p2

    if-ne v7, v0, :cond_c

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    move/from16 v5, p4

    invoke-static {v0, v12, v11, v5, v4}, Lcom/google/android/gms/internal/auth/Z;->j(Lcom/google/android/gms/internal/auth/i0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v8, v21

    if-nez v1, :cond_b

    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v7, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object v1

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_a
    or-int v1, v8, v21

    move/from16 v11, p5

    move v2, v6

    move v3, v9

    move-object v9, v4

    move v4, v1

    move v1, v13

    move v13, v5

    move/from16 v5, p3

    goto/16 :goto_0

    :cond_c
    move/from16 v5, p4

    goto/16 :goto_7

    :pswitch_5
    move/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/4 v1, 0x2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide v2, v12

    move/from16 v13, v19

    move-object/from16 v12, p2

    if-ne v7, v1, :cond_9

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_d

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->o([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_b

    :cond_d
    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->p([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_b
    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_6
    move/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v4, p6

    move/from16 p3, v9

    move-wide v0, v12

    move/from16 v13, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v12, p2

    move v9, v2

    if-nez v7, :cond_9

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    move/from16 v19, v6

    iget-wide v5, v4, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v22, 0x0

    cmp-long v5, v5, v22

    if-eqz v5, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v3, v18

    :goto_c
    invoke-static {v14, v0, v1, v3}, Lcom/google/android/gms/internal/auth/s0;->g(Ljava/lang/Object;JZ)V

    or-int v0, v8, v21

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move v1, v13

    move/from16 v13, p4

    move-object v9, v4

    move v4, v0

    move v0, v2

    move/from16 v2, v19

    goto/16 :goto_0

    :pswitch_7
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move/from16 v13, v19

    move/from16 v19, v6

    move-wide/from16 v5, v30

    if-ne v7, v1, :cond_10

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-virtual {v10, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v11, 0x4

    :goto_d
    or-int v1, v8, v21

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move/from16 v2, v19

    goto/16 :goto_9

    :pswitch_8
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move/from16 v13, v19

    move/from16 v19, v6

    move-wide/from16 v5, v30

    if-ne v7, v3, :cond_f

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v5

    move-object v6, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v11, 0x8

    or-int v4, v8, v21

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move v1, v13

    move/from16 v2, v19

    move/from16 v13, p4

    move-object v9, v6

    goto/16 :goto_0

    :cond_f
    move-object v6, v4

    goto/16 :goto_11

    :pswitch_9
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move/from16 v13, v19

    move/from16 v19, v6

    move-wide/from16 v5, v30

    if-nez v7, :cond_10

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v4, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v10, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :pswitch_a
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move/from16 v13, v19

    move/from16 v19, v6

    move-wide/from16 v5, v30

    if-nez v7, :cond_10

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    iget-wide v2, v4, Lcom/google/android/gms/internal/auth/A;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v22, v2

    move-wide v2, v5

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v8, v21

    move/from16 v5, p3

    move/from16 v11, p5

    move v0, v7

    :goto_e
    move v3, v9

    move v1, v13

    move/from16 v2, v19

    :goto_f
    move/from16 v13, p4

    move-object/from16 v9, p6

    goto/16 :goto_0

    :pswitch_b
    move/from16 v11, p3

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move/from16 v13, v19

    move/from16 v19, v6

    move-wide/from16 v5, v30

    if-ne v7, v1, :cond_10

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0, v5, v6, v14}, Lcom/google/android/gms/internal/auth/s0;->i(FJLjava/lang/Object;)V

    add-int/lit8 v0, v11, 0x4

    :goto_10
    or-int v4, v8, v21

    move/from16 v5, p3

    move/from16 v11, p5

    goto :goto_e

    :pswitch_c
    move/from16 v11, p3

    move/from16 p3, v9

    const/16 v17, -0x1

    const/16 v18, 0x0

    move v9, v2

    move-wide/from16 v30, v12

    move-object/from16 v12, p2

    move/from16 v13, v19

    move/from16 v19, v6

    move-wide/from16 v5, v30

    if-ne v7, v3, :cond_10

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v5, v6, v14, v0, v1}, Lcom/google/android/gms/internal/auth/s0;->h(JLjava/lang/Object;D)V

    add-int/lit8 v0, v11, 0x8

    goto :goto_10

    :cond_10
    :goto_11
    move/from16 v21, p3

    move/from16 v6, p5

    move/from16 v20, v8

    move/from16 v29, v9

    move-object/from16 v28, v10

    move v2, v11

    move v7, v13

    move-object v15, v14

    move-object/from16 v16, v23

    move/from16 v30, v19

    move/from16 v19, v17

    move/from16 v17, v30

    goto/16 :goto_15

    :cond_11
    move v9, v2

    move-object/from16 v23, v8

    move-wide v2, v12

    move/from16 v13, v19

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v12, p2

    move/from16 v8, p3

    move/from16 v19, v6

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_15

    const/4 v1, 0x2

    if-ne v7, v1, :cond_14

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/J;

    check-cast v0, Lcom/google/android/gms/internal/auth/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/y;->i()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    goto :goto_12

    :cond_12
    add-int/2addr v1, v1

    :goto_12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auth/J;->o(I)Lcom/google/android/gms/internal/auth/J;

    move-result-object v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v6, v0

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    move v1, v13

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v20, v4

    move/from16 v4, p4

    move/from16 v21, v5

    move-object v5, v6

    move/from16 v30, v19

    move/from16 v19, v17

    move/from16 v17, v30

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/Z;->l(Lcom/google/android/gms/internal/auth/i0;I[BIILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move/from16 v11, p5

    move v3, v9

    move/from16 v2, v17

    move/from16 v4, v20

    move/from16 v5, v21

    goto/16 :goto_f

    :cond_14
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v30, v19

    move/from16 v19, v17

    move/from16 v17, v30

    move v15, v8

    move/from16 v29, v9

    move-object/from16 v28, v10

    move/from16 p3, v13

    move-object/from16 v16, v23

    goto/16 :goto_13

    :cond_15
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v30, v19

    move/from16 v19, v17

    move/from16 v17, v30

    const/16 v1, 0x31

    if-gt v11, v1, :cond_17

    int-to-long v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move-object/from16 v2, p2

    move-wide/from16 v24, v3

    move v3, v8

    move/from16 v4, p4

    move-wide/from16 v26, v5

    move v5, v13

    move/from16 v6, v17

    move v15, v8

    move-object/from16 v16, v23

    move v8, v9

    move/from16 v29, v9

    move-object/from16 v28, v10

    move-wide/from16 v9, v26

    move/from16 p3, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/auth/a0;->v(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v15, :cond_16

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v17

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v10, v28

    move/from16 v3, v29

    goto/16 :goto_0

    :cond_16
    move-object/from16 v15, p1

    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v0

    goto/16 :goto_15

    :cond_17
    move-wide/from16 v24, v2

    move v15, v8

    move/from16 v29, v9

    move-object/from16 v28, v10

    move/from16 p3, v13

    move-object/from16 v16, v23

    const/16 v1, 0x32

    if-ne v11, v1, :cond_19

    const/4 v1, 0x2

    if-eq v7, v1, :cond_18

    :goto_13
    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v15

    move-object/from16 v15, p1

    goto/16 :goto_15

    :cond_18
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v9, v24

    move/from16 v13, v29

    invoke-virtual {v14, v9, v10, v13, v15}, Lcom/google/android/gms/internal/auth/a0;->s(JILjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_19
    move-object/from16 v14, p0

    move v8, v0

    move v12, v15

    move-wide/from16 v9, v24

    move/from16 v13, v29

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v17

    move-wide/from16 v22, v9

    move v9, v11

    move-wide/from16 v10, v22

    move v14, v12

    move v12, v13

    move/from16 v22, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/auth/a0;->t(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v14, :cond_1a

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move-object v14, v15

    move/from16 v2, v17

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v3, v22

    move-object/from16 v10, v28

    :goto_14
    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1a
    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v0

    move/from16 v29, v22

    :goto_15
    if-ne v7, v6, :cond_1b

    if-eqz v6, :cond_1b

    move v0, v2

    move v1, v7

    move/from16 v4, v20

    move/from16 v5, v21

    :goto_16
    const v2, 0xfffff

    goto :goto_17

    :cond_1b
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/auth/I;

    iget-object v1, v0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    sget-object v3, Lcom/google/android/gms/internal/auth/k0;->e:Lcom/google/android/gms/internal/auth/k0;

    if-ne v1, v3, :cond_1c

    invoke-static {}, Lcom/google/android/gms/internal/auth/k0;->a()Lcom/google/android/gms/internal/auth/k0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    :cond_1c
    move-object v4, v1

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/Z;->q(I[BIILcom/google/android/gms/internal/auth/k0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v11, v6

    move v1, v7

    move-object v14, v15

    move/from16 v2, v17

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v10, v28

    move/from16 v3, v29

    goto :goto_14

    :cond_1d
    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v16, v8

    move-object/from16 v28, v10

    move v6, v11

    move-object v15, v14

    goto :goto_16

    :goto_17
    if-eq v5, v2, :cond_1e

    int-to-long v7, v5

    move-object/from16 v3, v28

    invoke-virtual {v3, v15, v7, v8, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    move-object/from16 v3, p0

    iget v4, v3, Lcom/google/android/gms/internal/auth/a0;->h:I

    :goto_18
    iget v5, v3, Lcom/google/android/gms/internal/auth/a0;->i:I

    if-ge v4, v5, :cond_20

    iget-object v5, v3, Lcom/google/android/gms/internal/auth/a0;->g:[I

    aget v5, v5, v4

    aget v7, v16, v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v7

    and-int/2addr v7, v2

    int-to-long v7, v7

    invoke-static {v7, v8, v15}, Lcom/google/android/gms/internal/auth/s0;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_19

    :cond_1f
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/auth/a0;->A(I)V

    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_20
    if-nez v6, :cond_22

    move/from16 v2, p4

    if-ne v0, v2, :cond_21

    goto :goto_1a

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->c()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_22
    move/from16 v2, p4

    if-gt v0, v2, :cond_23

    if-ne v1, v6, :cond_23

    :goto_1a
    return v0

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->c()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

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

.method public final j()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->e:Lcom/google/android/gms/internal/auth/x;

    check-cast p0, Lcom/google/android/gms/internal/auth/I;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/I;->d(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;)V
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    int-to-long v7, v4

    aget v4, v1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/a0;->c(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v2, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/a0;->c(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v2, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/auth/j0;->a:Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/auth/W;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/V;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/a0;->j:Lcom/google/android/gms/internal/auth/S;

    invoke-virtual {v1, p1, p2, v7, v8}, Lcom/google/android/gms/internal/auth/S;->b(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/a0;->b(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/auth/r0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/auth/r0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/a0;->b(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->f(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->g(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/auth/r0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/auth/s0;->j(Lcom/google/android/gms/internal/auth/I;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/auth/r0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/auth/r0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->b(JLjava/lang/Object;)F

    move-result v1

    invoke-static {v1, v7, v8, p1}, Lcom/google/android/gms/internal/auth/s0;->i(FJLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/auth/r0;->a(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {v7, v8, p1, v1, v2}, Lcom/google/android/gms/internal/auth/s0;->h(JLjava/lang/Object;D)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth/a0;->d(Lcom/google/android/gms/internal/auth/I;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->k:Lcom/google/android/gms/internal/auth/l0;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/j0;->b(Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;)V

    return-void

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

.method public final l(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/auth/a0;->h:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/a0;->g:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/auth/a0;->i:I

    if-ge v0, v3, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v1

    const v3, 0xfffff

    and-int/2addr v1, v3

    int-to-long v3, v1

    sget-object v1, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/auth/V;

    iput-boolean v2, v5, Lcom/google/android/gms/internal/auth/V;->a:Z

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/auth/s0;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, v1, v3

    int-to-long v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/auth/a0;->j:Lcom/google/android/gms/internal/auth/S;

    invoke-virtual {v6, v4, v5, p1}, Lcom/google/android/gms/internal/auth/S;->a(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->k:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/auth/I;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/auth/k0;->d:Z

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/auth/I;)I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->z(Lcom/google/android/gms/internal/auth/I;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->r(Lcom/google/android/gms/internal/auth/I;J)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->z(Lcom/google/android/gms/internal/auth/I;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->r(Lcom/google/android/gms/internal/auth/I;J)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->r(Lcom/google/android/gms/internal/auth/I;J)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->r(Lcom/google/android/gms/internal/auth/I;J)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->r(Lcom/google/android/gms/internal/auth/I;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->z(Lcom/google/android/gms/internal/auth/I;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->r(Lcom/google/android/gms/internal/auth/I;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->z(Lcom/google/android/gms/internal/auth/I;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/a0;->z(Lcom/google/android/gms/internal/auth/I;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

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

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->f(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->b(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->a(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/K;->a(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->k:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/k0;->hashCode()I

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

.method public final n(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/a0;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/auth/a0;->u(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/a0;->h(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I

    return-void
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/auth/a0;->h:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/a0;->g:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_5

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    invoke-static {v9}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_9

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_8

    const/16 v6, 0x44

    if-eq v10, v6, :cond_8

    const/16 v6, 0x31

    if-eq v10, v6, :cond_9

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6

    goto/16 :goto_5

    :cond_6
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/s0;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/auth/V;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_5

    :cond_7
    div-int/lit8 v5, v5, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->b:[Ljava/lang/Object;

    add-int/2addr v5, v5

    aget-object p0, p0, v5

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/auth/a0;->g(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/auth/i0;->o(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_9
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/s0;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v5

    move v7, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/auth/i0;->o(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    return v1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_b
    if-ne v3, v0, :cond_c

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/auth/a0;->f(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_c
    and-int/2addr v7, v4

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    move v6, v1

    :goto_4
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/auth/i0;->o(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v6
.end method

.method public final p(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/a0;->y(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    sget-object v8, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v8, v4, v5, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v4, v5, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v9, v4, :cond_1

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_1
    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->l(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/auth/j0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->f(JLjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->f(JLjava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->i(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->j(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->b(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->b(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v5, v4, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/a0;->e(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/auth/s0;->c:Lcom/google/android/gms/internal/auth/r0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/r0;->a(JLjava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/r0;->a(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v2

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->k:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    check-cast p2, Lcom/google/android/gms/internal/auth/I;

    iget-object p1, p2, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/k0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0

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

.method public final s(JILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    div-int/lit8 p3, p3, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->b:[Ljava/lang/Object;

    add-int/2addr p3, p3

    aget-object p0, p0, p3

    invoke-virtual {v0, p4, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/google/android/gms/internal/auth/V;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/V;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/V;->a()Lcom/google/android/gms/internal/auth/V;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/V;->b()Lcom/google/android/gms/internal/auth/V;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/auth/W;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/V;

    invoke-virtual {v0, p4, p1, p2, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I
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

    sget-object v12, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    add-int/lit8 v6, v5, 0x2

    iget-object v7, v0, Lcom/google/android/gms/internal/auth/a0;->a:[I

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

    if-ne v2, v6, :cond_10

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v2

    and-int/lit8 v0, p5, -0x8

    or-int/lit8 v6, v0, 0x4

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/auth/Z;->g(Lcom/google/android/gms/internal/auth/i0;[BIIILcom/google/android/gms/internal/auth/A;)I

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

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_1
    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/auth/Z;->h(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/Z;->d(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v2, :cond_10

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/auth/a0;->A(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v0, v2

    goto/16 :goto_8

    :pswitch_4
    if-eq v2, v6, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->a([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    if-ne v2, v6, :cond_10

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/auth/Z;->j(Lcom/google/android/gms/internal/auth/i0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_5

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_6

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_6
    if-ne v2, v6, :cond_10

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v2, :cond_7

    const-string v2, ""

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_7
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_9

    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/auth/u0;->b([BII)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->a()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_9
    :goto_4
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_7
    if-nez v2, :cond_10

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    if-eq v2, v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_9
    if-eq v2, v15, :cond_c

    goto :goto_7

    :cond_c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    :pswitch_a
    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    if-eq v2, v7, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    return v0

    :pswitch_d
    if-eq v2, v15, :cond_11

    :cond_10
    :goto_7
    move v0, v4

    :goto_8
    return v0

    :cond_11
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x8

    return v0

    nop

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

.method public final u(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    move/from16 v0, p3

    move v2, v8

    move v5, v2

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1a

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/auth/Z;->s(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    iget v10, v15, Lcom/google/android/gms/internal/auth/a0;->d:I

    iget v7, v15, Lcom/google/android/gms/internal/auth/a0;->c:I

    if-le v3, v1, :cond_2

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v7, :cond_1

    if-gt v3, v10, :cond_1

    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/auth/a0;->w(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    move v10, v1

    const/4 v7, -0x1

    goto :goto_3

    :cond_2
    if-lt v3, v7, :cond_1

    if-gt v3, v10, :cond_1

    invoke-virtual {v15, v3, v8}, Lcom/google/android/gms/internal/auth/a0;->w(II)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v10, v7, :cond_3

    move/from16 v19, v3

    move v2, v4

    move/from16 v26, v5

    move/from16 v27, v7

    move/from16 v18, v8

    move/from16 v28, v18

    move-object/from16 v29, v9

    move-object v15, v14

    goto/16 :goto_15

    :cond_3
    add-int/lit8 v1, v10, 0x1

    iget-object v2, v15, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget v1, v2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/a0;->x(I)I

    move-result v8

    const v17, 0xfffff

    and-int v7, v1, v17

    move/from16 v20, v3

    move/from16 v19, v4

    int-to-long v3, v7

    const/16 v7, 0x11

    move/from16 v21, v1

    if-gt v8, v7, :cond_f

    add-int/lit8 v7, v10, 0x2

    aget v2, v2, v7

    ushr-int/lit8 v7, v2, 0x14

    const/4 v1, 0x1

    shl-int v7, v1, v7

    const v13, 0xfffff

    and-int/2addr v2, v13

    if-eq v2, v6, :cond_6

    if-eq v6, v13, :cond_4

    move/from16 v23, v2

    int-to-long v1, v6

    invoke-virtual {v9, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v1, v23

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    if-eq v1, v13, :cond_5

    int-to-long v5, v1

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :cond_5
    move/from16 v23, v1

    :goto_5
    move v6, v5

    goto :goto_6

    :cond_6
    move/from16 v23, v6

    goto :goto_5

    :goto_6
    const/4 v1, 0x5

    packed-switch v8, :pswitch_data_0

    move/from16 v8, v19

    move/from16 v19, v20

    :goto_7
    move/from16 v20, v13

    move/from16 v13, p4

    goto/16 :goto_10

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v5, v19

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v8

    iget-wide v0, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/Z;->h(J)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v19, v20

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    move/from16 v13, p4

    :goto_8
    move v0, v8

    :goto_9
    move v2, v10

    move/from16 v1, v19

    move/from16 v6, v23

    :goto_a
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    move/from16 v5, v19

    move/from16 v19, v20

    :cond_8
    move v8, v5

    goto :goto_7

    :pswitch_1
    move/from16 v5, v19

    move/from16 v19, v20

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/Z;->d(I)I

    move-result v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v5, v6, v7

    move/from16 v13, p4

    goto :goto_9

    :pswitch_2
    move/from16 v5, v19

    move/from16 v19, v20

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_3
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->a([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_4
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    move/from16 v20, v13

    move/from16 v13, p4

    invoke-static {v0, v12, v5, v13, v11}, Lcom/google/android/gms/internal/auth/Z;->j(Lcom/google/android/gms/internal/auth/i0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :cond_9
    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/K;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/I;

    move-result-object v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_c
    or-int v5, v6, v7

    goto :goto_9

    :cond_a
    move/from16 v20, v13

    move/from16 v13, p4

    :cond_b
    move v8, v5

    goto/16 :goto_10

    :pswitch_5
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x2

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->o([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_d

    :cond_c
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->p([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_d
    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_6
    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-nez v0, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/auth/s0;->g(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_7
    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_c

    :pswitch_8
    move/from16 v5, v19

    move/from16 v19, v20

    const/4 v1, 0x1

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v8, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_f
    add-int/lit8 v0, v8, 0x8

    goto :goto_c

    :pswitch_9
    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_a
    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    move-result v8

    iget-wide v1, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    move-object v0, v9

    move-wide/from16 v16, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    goto/16 :goto_8

    :pswitch_b
    move/from16 v8, v19

    move/from16 v19, v20

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_e

    invoke-static {v8, v12}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0, v3, v4, v14}, Lcom/google/android/gms/internal/auth/s0;->i(FJLjava/lang/Object;)V

    add-int/lit8 v0, v8, 0x4

    goto/16 :goto_c

    :pswitch_c
    move/from16 v8, v19

    move/from16 v19, v20

    const/4 v1, 0x1

    move/from16 v20, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_e

    invoke-static {v8, v12}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v3, v4, v14, v0, v1}, Lcom/google/android/gms/internal/auth/s0;->h(JLjava/lang/Object;D)V

    goto :goto_f

    :cond_e
    :goto_10
    move/from16 v26, v6

    move v2, v8

    move-object/from16 v29, v9

    move/from16 v28, v10

    move-object v15, v14

    move/from16 v6, v23

    const/16 v18, 0x0

    const/16 v27, -0x1

    goto/16 :goto_15

    :cond_f
    move/from16 v7, v19

    move/from16 v19, v20

    const v20, 0xfffff

    const/16 v1, 0x1b

    if-ne v8, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/J;

    check-cast v0, Lcom/google/android/gms/internal/auth/y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/y;->i()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0xa

    goto :goto_11

    :cond_10
    add-int/2addr v1, v1

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auth/J;->o(I)Lcom/google/android/gms/internal/auth/J;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v8, v0

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/Z;->l(Lcom/google/android/gms/internal/auth/i0;I[BIILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move v5, v7

    move v6, v8

    move v2, v10

    move/from16 v1, v19

    goto/16 :goto_a

    :cond_12
    move/from16 v26, v5

    move/from16 v25, v6

    move v15, v7

    move-object/from16 v29, v9

    move/from16 v28, v10

    const/16 v18, 0x0

    const/16 v27, -0x1

    goto/16 :goto_13

    :cond_13
    move/from16 v30, v6

    move v6, v5

    move/from16 v5, v30

    const/16 v1, 0x31

    if-gt v8, v1, :cond_15

    move/from16 v1, v21

    int-to-long v1, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v23, v3

    move v3, v7

    move/from16 v4, p4

    move/from16 v25, v5

    move/from16 v5, v16

    move/from16 v26, v6

    move/from16 v6, v19

    move v15, v7

    const/16 v27, -0x1

    move/from16 v7, v17

    move/from16 p3, v8

    const/16 v18, 0x0

    move v8, v10

    move-object/from16 v29, v9

    move/from16 v28, v10

    move-wide/from16 v9, v21

    move/from16 v11, p3

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/auth/a0;->v(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v15, :cond_14

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v6, v25

    move/from16 v5, v26

    move/from16 v2, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    :cond_14
    move-object/from16 v15, p1

    move v2, v0

    :goto_12
    move/from16 v6, v25

    goto/16 :goto_15

    :cond_15
    move/from16 v17, v0

    move-wide/from16 v23, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move v15, v7

    move/from16 p3, v8

    move-object/from16 v29, v9

    move/from16 v28, v10

    move/from16 v1, v21

    const/16 v18, 0x0

    const/16 v27, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_17

    move/from16 v7, v17

    const/4 v0, 0x2

    if-eq v7, v0, :cond_16

    :goto_13
    move v2, v15

    move/from16 v6, v25

    move-object/from16 v15, p1

    goto :goto_15

    :cond_16
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v23

    move/from16 v13, v28

    invoke-virtual {v14, v10, v11, v13, v15}, Lcom/google/android/gms/internal/auth/a0;->s(JILjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_17
    move-object/from16 v14, p0

    move v12, v15

    move/from16 v7, v17

    move-wide/from16 v10, v23

    move/from16 v13, v28

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v19

    move v14, v12

    move v12, v13

    move/from16 v17, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/auth/a0;->t(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-eq v0, v14, :cond_18

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v2, v17

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v6, v25

    move/from16 v5, v26

    :goto_14
    move-object/from16 v9, v29

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_18
    move v2, v0

    move/from16 v28, v17

    goto :goto_12

    :goto_15
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/auth/I;

    iget-object v1, v0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    sget-object v3, Lcom/google/android/gms/internal/auth/k0;->e:Lcom/google/android/gms/internal/auth/k0;

    if-ne v1, v3, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/auth/k0;->a()Lcom/google/android/gms/internal/auth/k0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    :cond_19
    move-object v4, v1

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/Z;->q(I[BIILcom/google/android/gms/internal/auth/k0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v8, v18

    move/from16 v1, v19

    move/from16 v5, v26

    move/from16 v2, v28

    goto :goto_14

    :cond_1a
    move/from16 v26, v5

    move v10, v6

    move-object/from16 v29, v9

    move-object v15, v14

    const v1, 0xfffff

    if-eq v10, v1, :cond_1b

    int-to-long v1, v10

    move/from16 v5, v26

    move-object/from16 v3, v29

    invoke-virtual {v3, v15, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1b
    move/from16 v1, p4

    if-ne v0, v1, :cond_1c

    return-void

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->c()Lcom/google/android/gms/internal/auth/L;

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

.method public final v(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p12

    move-object/from16 v10, p14

    sget-object v11, Lcom/google/android/gms/internal/auth/a0;->m:Lsun/misc/Unsafe;

    invoke-virtual {v11, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/auth/J;

    check-cast v12, Lcom/google/android/gms/internal/auth/y;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/auth/y;->i()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/auth/J;->o(I)Lcom/google/android/gms/internal/auth/J;

    move-result-object v12

    invoke-virtual {v11, p1, v8, v9, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x5

    const/4 v13, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_3e

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    and-int/lit8 v1, v5, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/auth/Z;->g(Lcom/google/android/gms/internal/auth/i0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget-object v6, v10, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget v7, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq v5, v7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/auth/Z;->g(Lcom/google/android/gms/internal/auth/i0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget-object v6, v10, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return v3

    :pswitch_0
    if-ne v6, v13, :cond_6

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_5

    if-ne v0, v1, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_6
    if-eqz v6, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_1
    if-ne v6, v13, :cond_a

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_9

    if-ne v0, v1, :cond_8

    goto/16 :goto_b

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_9
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_a
    if-eqz v6, :cond_b

    goto/16 :goto_a

    :cond_b
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_2
    if-ne v6, v13, :cond_e

    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/auth/Z;->n([BILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/auth/I;

    iget-object v3, v1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    sget-object v4, Lcom/google/android/gms/internal/auth/k0;->e:Lcom/google/android/gms/internal/auth/k0;

    if-ne v3, v4, :cond_c

    goto :goto_3

    :cond_c
    move-object v8, v3

    :goto_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/auth/a0;->A(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/auth/a0;->k:Lcom/google/android/gms/internal/auth/l0;

    move/from16 v3, p6

    invoke-static {v3, v12, v8, v0}, Lcom/google/android/gms/internal/auth/j0;->a(ILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/k0;Lcom/google/android/gms/internal/auth/l0;)Ljava/lang/Object;

    if-nez v8, :cond_d

    move v0, v2

    goto/16 :goto_b

    :cond_d
    iput-object v8, v1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    return v2

    :cond_e
    if-eqz v6, :cond_f

    goto/16 :goto_a

    :cond_f
    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/auth/Z;->t([BILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)V

    throw v8

    :pswitch_3
    if-ne v6, v13, :cond_3e

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v1, :cond_17

    array-length v3, v2

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_16

    if-nez v1, :cond_10

    sget-object v1, Lcom/google/android/gms/internal/auth/C;->c:Lcom/google/android/gms/internal/auth/C;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/auth/C;->n([BII)Lcom/google/android/gms/internal/auth/C;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr v0, v1

    :goto_5
    if-ge v0, v4, :cond_15

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-eq v5, v3, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {v2, v1, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v1, :cond_14

    array-length v3, v2

    sub-int/2addr v3, v0

    if-gt v1, v3, :cond_13

    if-nez v1, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/auth/C;->c:Lcom/google/android/gms/internal/auth/C;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/auth/C;->n([BII)Lcom/google/android/gms/internal/auth/C;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->b()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_15
    :goto_6
    return v0

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->b()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :pswitch_4
    if-eq v6, v13, :cond_18

    goto/16 :goto_a

    :cond_18
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/auth/a0;->B(I)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/auth/Z;->l(Lcom/google/android/gms/internal/auth/i0;I[BIILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v13, :cond_3e

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const-string v1, ""

    if-nez v0, :cond_1d

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v3, :cond_1c

    if-nez v3, :cond_19

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_19
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v0, v3

    :goto_8
    if-ge v0, v4, :cond_3f

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget v6, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v5, v6, :cond_3f

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v3, :cond_1b

    if-nez v3, :cond_1a

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1a
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->b()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->b()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v3, :cond_24

    if-nez v3, :cond_1e

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_9

    :cond_1e
    add-int v6, v0, v3

    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/auth/u0;->b([BII)Z

    move-result v7

    if-eqz v7, :cond_23

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v0, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge v6, v4, :cond_22

    invoke-static {v2, v6, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v5, v3, :cond_22

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget v0, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_21

    if-nez v0, :cond_1f

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    add-int v3, v6, v0

    invoke-static {v2, v6, v3}, Lcom/google/android/gms/internal/auth/u0;->b([BII)Z

    move-result v7

    if-eqz v7, :cond_20

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/auth/K;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v6, v0, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_9

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->a()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->b()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_22
    move v0, v6

    goto/16 :goto_b

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->a()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->b()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v13, :cond_27

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_26

    if-ne v0, v1, :cond_25

    goto/16 :goto_b

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_26
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_27
    if-eqz v6, :cond_28

    goto/16 :goto_a

    :cond_28
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_7
    if-ne v6, v13, :cond_2b

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2a

    if-ne v0, v1, :cond_29

    goto/16 :goto_b

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_2a
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    throw v8

    :cond_2b
    if-eq v6, v11, :cond_2c

    goto/16 :goto_a

    :cond_2c
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    throw v8

    :pswitch_8
    if-ne v6, v13, :cond_2f

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2e

    if-ne v0, v1, :cond_2d

    goto/16 :goto_b

    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_2e
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    throw v8

    :cond_2f
    if-eq v6, v9, :cond_30

    goto/16 :goto_a

    :cond_30
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    throw v8

    :pswitch_9
    if-ne v6, v13, :cond_31

    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/auth/Z;->n([BILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_b

    :cond_31
    if-eqz v6, :cond_32

    goto/16 :goto_a

    :cond_32
    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/auth/Z;->t([BILcom/google/android/gms/internal/auth/J;Lcom/google/android/gms/internal/auth/A;)V

    throw v8

    :pswitch_a
    if-ne v6, v13, :cond_35

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_34

    if-ne v0, v1, :cond_33

    goto :goto_b

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_34
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_35
    if-eqz v6, :cond_36

    goto :goto_a

    :cond_36
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->u([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_b
    if-ne v6, v13, :cond_39

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_38

    if-ne v0, v1, :cond_37

    goto :goto_b

    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_38
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :cond_39
    if-eq v6, v11, :cond_3a

    goto :goto_a

    :cond_3a
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/Z;->e(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :pswitch_c
    if-ne v6, v13, :cond_3d

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/auth/Z;->r([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_3c

    if-ne v0, v1, :cond_3b

    goto :goto_b

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object v0

    throw v0

    :cond_3c
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    :cond_3d
    if-eq v6, v9, :cond_40

    :cond_3e
    :goto_a
    move v0, v3

    :cond_3f
    :goto_b
    return v0

    :cond_40
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->n(Lcom/google/android/gms/internal/auth/J;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/Z;->v(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    nop

    :pswitch_data_0
    .packed-switch 0x12
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final y(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/a0;->a:[I

    aget p0, p0, p1

    return p0
.end method
