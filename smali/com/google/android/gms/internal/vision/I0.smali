.class public final Lcom/google/android/gms/internal/vision/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/R0;


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/vision/O;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lcom/google/android/gms/internal/vision/L0;

.field public final k:Lcom/google/android/gms/internal/vision/x0;

.field public final l:Lcom/google/android/gms/internal/vision/T0;

.field public final m:Lcom/google/android/gms/internal/vision/F0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/I0;->n:[I

    invoke-static {}, Lcom/google/android/gms/internal/vision/a1;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/O;Z[IIILcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/I0;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/vision/I0;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/vision/I0;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/vision/j0;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/I0;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/vision/I0;->g:[I

    iput p8, p0, Lcom/google/android/gms/internal/vision/I0;->h:I

    iput p9, p0, Lcom/google/android/gms/internal/vision/I0;->i:I

    iput-object p10, p0, Lcom/google/android/gms/internal/vision/I0;->j:Lcom/google/android/gms/internal/vision/L0;

    iput-object p11, p0, Lcom/google/android/gms/internal/vision/I0;->k:Lcom/google/android/gms/internal/vision/x0;

    iput-object p12, p0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/I0;->e:Lcom/google/android/gms/internal/vision/O;

    iput-object p14, p0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    return-void
.end method

.method public static C(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static D(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static E(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/U0;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/vision/j0;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    sget-object v1, Lcom/google/android/gms/internal/vision/U0;->f:Lcom/google/android/gms/internal/vision/U0;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/vision/U0;->b()Lcom/google/android/gms/internal/vision/U0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    :cond_0
    return-object v0
.end method

.method public static m(Lcom/google/android/gms/internal/vision/P0;Lcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)Lcom/google/android/gms/internal/vision/I0;
    .locals 33

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/P0;

    if-eqz v1, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vision/P0;->a()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v11, v3

    goto :goto_0

    :cond_0
    move v11, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vision/P0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    move v5, v3

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    move v7, v3

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/vision/I0;->n:[I

    move v9, v4

    move v10, v9

    move v12, v10

    move v14, v12

    move v15, v14

    move-object v13, v7

    move v7, v15

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v18, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_14

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v18

    goto :goto_a

    :cond_14
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v18

    :cond_15
    add-int v4, v15, v13

    add-int/2addr v4, v14

    new-array v4, v4, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v4

    move v4, v5

    move/from16 v5, v16

    :goto_b
    sget-object v8, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vision/P0;->d()[Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vision/P0;->b()Lcom/google/android/gms/internal/vision/O;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    mul-int/lit8 v0, v12, 0x3

    new-array v0, v0, [I

    shl-int/2addr v12, v3

    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v7

    move/from16 v22, v15

    move/from16 v23, v19

    const/4 v7, 0x0

    const/16 v21, 0x0

    :goto_c
    if-ge v5, v2, :cond_33

    add-int/lit8 v24, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v3, 0xd800

    if-lt v5, v3, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v3, v2, :cond_16

    and-int/lit16 v2, v3, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v5, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    move/from16 v2, v27

    goto :goto_d

    :cond_16
    shl-int v2, v3, v24

    or-int/2addr v5, v2

    move/from16 v2, v26

    goto :goto_e

    :cond_17
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_e
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v3, v15, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v2, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    move/from16 v15, v28

    goto :goto_f

    :cond_18
    shl-int v3, v3, v24

    or-int/2addr v2, v3

    move/from16 v3, v26

    goto :goto_10

    :cond_19
    move/from16 v28, v15

    move/from16 v3, v24

    :goto_10
    and-int/lit16 v15, v2, 0xff

    move/from16 v24, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_1a

    add-int/lit8 v10, v7, 0x1

    aput v21, v13, v7

    move v7, v10

    :cond_1a
    const/16 v10, 0x33

    if-lt v15, v10, :cond_22

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v26, v7

    const v7, 0xd800

    if-lt v3, v7, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v31, 0xd

    :goto_11
    add-int/lit8 v32, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_1b

    and-int/lit16 v7, v10, 0x1fff

    shl-int v7, v7, v31

    or-int/2addr v3, v7

    add-int/lit8 v31, v31, 0xd

    move/from16 v10, v32

    const v7, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v7, v10, v31

    or-int/2addr v3, v7

    move/from16 v10, v32

    :cond_1c
    add-int/lit8 v7, v15, -0x33

    move/from16 v31, v10

    const/16 v10, 0x9

    if-eq v7, v10, :cond_1f

    const/16 v10, 0x11

    if-ne v7, v10, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v10, 0xc

    if-ne v7, v10, :cond_1e

    if-nez v11, :cond_1e

    div-int/lit8 v7, v21, 0x3

    const/4 v10, 0x1

    shl-int/2addr v7, v10

    add-int/2addr v7, v10

    add-int/lit8 v10, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v7

    move v14, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_13

    :cond_1f
    :goto_12
    div-int/lit8 v7, v21, 0x3

    const/4 v10, 0x1

    shl-int/2addr v7, v10

    add-int/2addr v7, v10

    add-int/lit8 v25, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v7

    move/from16 v14, v25

    :goto_13
    shl-int/2addr v3, v10

    aget-object v7, v18, v3

    instance-of v10, v7, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_20

    check-cast v7, Ljava/lang/reflect/Field;

    :goto_14
    move/from16 v32, v9

    goto :goto_15

    :cond_20
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/vision/I0;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v18, v3

    goto :goto_14

    :goto_15
    invoke-virtual {v8, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v7, v9

    add-int/lit8 v3, v3, 0x1

    aget-object v9, v18, v3

    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/vision/I0;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v18, v3

    :goto_16
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v3, v9

    move-object/from16 v30, v1

    move-object v1, v6

    move/from16 v10, v31

    const/16 v20, 0x1

    move v6, v3

    const/4 v3, 0x0

    goto/16 :goto_20

    :cond_22
    move/from16 v26, v7

    move/from16 v32, v9

    add-int/lit8 v7, v14, 0x1

    aget-object v9, v18, v14

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/vision/I0;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v10, 0x9

    if-eq v15, v10, :cond_23

    const/16 v10, 0x11

    if-ne v15, v10, :cond_24

    :cond_23
    const/16 v25, 0x1

    goto/16 :goto_1a

    :cond_24
    const/16 v10, 0x1b

    if-eq v15, v10, :cond_25

    const/16 v10, 0x31

    if-ne v15, v10, :cond_26

    :cond_25
    const/16 v25, 0x1

    goto :goto_19

    :cond_26
    const/16 v10, 0xc

    if-eq v15, v10, :cond_29

    const/16 v10, 0x1e

    if-eq v15, v10, :cond_29

    const/16 v10, 0x2c

    if-ne v15, v10, :cond_27

    goto :goto_17

    :cond_27
    const/16 v10, 0x32

    if-ne v15, v10, :cond_2b

    add-int/lit8 v10, v22, 0x1

    aput v21, v13, v22

    div-int/lit8 v22, v21, 0x3

    const/16 v25, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v29, v14, 0x2

    aget-object v7, v18, v7

    aput-object v7, v12, v22

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v7, v14, 0x3

    aget-object v14, v18, v29

    aput-object v14, v12, v22

    move/from16 v22, v10

    goto :goto_1b

    :cond_28
    move/from16 v22, v10

    move/from16 v7, v29

    goto :goto_1b

    :cond_29
    :goto_17
    if-nez v11, :cond_2a

    div-int/lit8 v10, v21, 0x3

    const/16 v25, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v7, v18, v7

    aput-object v7, v12, v10

    :goto_18
    move v7, v14

    goto :goto_1b

    :cond_2a
    const/16 v25, 0x1

    goto :goto_1b

    :goto_19
    div-int/lit8 v10, v21, 0x3

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v7, v18, v7

    aput-object v7, v12, v10

    goto :goto_18

    :goto_1a
    div-int/lit8 v10, v21, 0x3

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v10

    :cond_2b
    :goto_1b
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    and-int/lit16 v10, v2, 0x1000

    const/16 v14, 0x1000

    if-ne v10, v14, :cond_2f

    const/16 v10, 0x11

    if-gt v15, v10, :cond_2f

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v14, 0xd800

    if-lt v3, v14, :cond_2d

    and-int/lit16 v3, v3, 0x1fff

    const/16 v20, 0xd

    :goto_1c
    add-int/lit8 v29, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v14, :cond_2c

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v20

    or-int/2addr v3, v10

    add-int/lit8 v20, v20, 0xd

    move/from16 v10, v29

    goto :goto_1c

    :cond_2c
    shl-int v10, v10, v20

    or-int/2addr v3, v10

    move/from16 v10, v29

    :cond_2d
    const/16 v20, 0x1

    shl-int/lit8 v25, v4, 0x1

    div-int/lit8 v29, v3, 0x20

    add-int v29, v29, v25

    aget-object v14, v18, v29

    move-object/from16 v30, v1

    instance-of v1, v14, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2e

    check-cast v14, Ljava/lang/reflect/Field;

    :goto_1d
    move-object v1, v6

    move/from16 v29, v7

    goto :goto_1e

    :cond_2e
    check-cast v14, Ljava/lang/String;

    invoke-static {v6, v14}, Lcom/google/android/gms/internal/vision/I0;->o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    aput-object v14, v18, v29

    goto :goto_1d

    :goto_1e
    invoke-virtual {v8, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    rem-int/lit8 v3, v3, 0x20

    goto :goto_1f

    :cond_2f
    move-object/from16 v30, v1

    move-object v1, v6

    move/from16 v29, v7

    const/16 v20, 0x1

    const v6, 0xfffff

    move v10, v3

    const/4 v3, 0x0

    :goto_1f
    const/16 v7, 0x12

    if-lt v15, v7, :cond_30

    const/16 v7, 0x31

    if-gt v15, v7, :cond_30

    add-int/lit8 v7, v23, 0x1

    aput v9, v13, v23

    move/from16 v23, v7

    :cond_30
    move v7, v9

    move/from16 v14, v29

    :goto_20
    add-int/lit8 v9, v21, 0x1

    aput v5, v0, v21

    add-int/lit8 v5, v21, 0x2

    move-object/from16 v29, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_31

    const/high16 v1, 0x20000000

    goto :goto_21

    :cond_31
    const/4 v1, 0x0

    :goto_21
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_22

    :cond_32
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v1, v2

    shl-int/lit8 v2, v15, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v7

    aput v1, v0, v9

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v1, v6

    aput v1, v0, v5

    move v5, v10

    move/from16 v3, v20

    move/from16 v10, v24

    move/from16 v7, v26

    move/from16 v2, v27

    move/from16 v15, v28

    move-object/from16 v6, v29

    move-object/from16 v1, v30

    move/from16 v9, v32

    goto/16 :goto_c

    :cond_33
    move/from16 v32, v9

    move/from16 v24, v10

    move/from16 v28, v15

    new-instance v1, Lcom/google/android/gms/internal/vision/I0;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/vision/P0;->b()Lcom/google/android/gms/internal/vision/O;

    move-result-object v10

    move-object v5, v1

    move-object v6, v0

    move-object v7, v12

    move/from16 v8, v32

    move/from16 v9, v24

    move-object v12, v13

    move/from16 v13, v28

    move/from16 v14, v19

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/internal/vision/I0;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/O;Z[IIILcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)V

    return-object v1

    :cond_34
    invoke-static/range {p0 .. p0}, Landroidx/recyclerview/widget/P;->p(Lcom/google/android/gms/internal/vision/P0;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-static {v3, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V
    .locals 7

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/vision/V;

    const/4 v0, 0x2

    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    iget p0, p2, Lcom/google/android/gms/internal/vision/V;->e:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/V;->c0(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/V;->c0(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/e1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p2, Lcom/google/android/gms/internal/vision/V;->c:[B

    iget v3, p2, Lcom/google/android/gms/internal/vision/V;->d:I

    if-ne v1, v0, :cond_0

    add-int v0, p0, v1

    :try_start_1
    iput v0, p2, Lcom/google/android/gms/internal/vision/V;->e:I

    sub-int/2addr v3, v0

    sget-object v4, Lcom/google/android/gms/internal/vision/d1;->a:Lcom/google/android/gms/internal/vision/i0;

    invoke-virtual {v4, p1, v2, v0, v3}, Lcom/google/android/gms/internal/vision/i0;->h(Ljava/lang/String;[BII)I

    move-result v0

    iput p0, p2, Lcom/google/android/gms/internal/vision/V;->e:I

    sub-int v2, v0, p0

    sub-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    iput v0, p2, Lcom/google/android/gms/internal/vision/V;->e:I

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/d1;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    iget v0, p2, Lcom/google/android/gms/internal/vision/V;->e:I

    sub-int/2addr v3, v0

    sget-object v1, Lcom/google/android/gms/internal/vision/d1;->a:Lcom/google/android/gms/internal/vision/i0;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/vision/i0;->h(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p2, Lcom/google/android/gms/internal/vision/V;->e:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/e1; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/vision/W;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/vision/W;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_1
    iput p0, p2, Lcom/google/android/gms/internal/vision/V;->e:I

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v1, Lcom/google/android/gms/internal/vision/V;->f:Ljava/util/logging/Logger;

    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v3, "com.google.protobuf.CodedOutputStream"

    const-string v4, "inefficientWriteStringNoTag"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :try_start_2
    array-length p1, p0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    array-length p1, p0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Lcom/google/android/gms/internal/vision/V;->S([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/vision/W; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    new-instance p1, Lcom/google/android/gms/internal/vision/W;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/vision/W;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/vision/C0;->e(ILcom/google/android/gms/internal/vision/U;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/vision/I0;->h:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_e

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/I0;->g:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

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
    if-nez v10, :cond_4

    return v1

    :cond_4
    const/high16 v10, 0xff00000

    and-int/2addr v10, v9

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_8

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_7

    const/16 v6, 0x44

    if-eq v10, v6, :cond_7

    const/16 v6, 0x31

    if-eq v10, v6, :cond_8

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/F0;->d(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/E0;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/F0;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/R0;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    return v1

    :cond_8
    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v5

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/vision/R0;->a(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    return v1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-ne v3, v0, :cond_b

    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_b
    and-int/2addr v7, v4

    if-eqz v7, :cond_c

    goto :goto_3

    :cond_c
    move v6, v1

    :goto_3
    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/R0;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    return v1

    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return v6
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/vision/I0;->h:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/I0;->g:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/vision/I0;->i:I

    if-ge v0, v3, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v1

    const v3, 0xfffff

    and-int/2addr v1, v3

    int-to-long v3, v1

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/vision/E0;

    iput-boolean v2, v5, Lcom/google/android/gms/internal/vision/E0;->a:Z

    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, v1, v3

    int-to-long v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/vision/I0;->k:Lcom/google/android/gms/internal/vision/x0;

    invoke-virtual {v6, v4, v5, p1}, Lcom/google/android/gms/internal/vision/x0;->b(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/j0;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/U0;->e:Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/vision/j0;)I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

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

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->h(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->i(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->j(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/n0;->a(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/U0;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

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

.method public final d(Ljava/lang/Object;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/I0;->f:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    const/high16 v6, 0xff00000

    const v7, 0xfffff

    if-eqz v3, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    array-length v10, v2

    if-ge v8, v10, :cond_4

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v10

    and-int v11, v10, v6

    ushr-int/lit8 v11, v11, 0x14

    aget v12, v2, v8

    and-int/2addr v10, v7

    int-to-long v13, v10

    sget-object v10, Lcom/google/android/gms/internal/vision/b0;->zza:Lcom/google/android/gms/internal/vision/b0;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/vision/b0;->a()I

    move-result v10

    if-lt v11, v10, :cond_0

    sget-object v10, Lcom/google/android/gms/internal/vision/b0;->zzb:Lcom/google/android/gms/internal/vision/b0;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/vision/b0;->a()I

    move-result v10

    if-gt v11, v10, :cond_0

    add-int/lit8 v10, v8, 0x2

    aget v10, v2, v10

    :cond_0
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/vision/O;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v11

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->P(ILcom/google/android/gms/internal/vision/O;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v10

    :goto_1
    add-int/2addr v10, v9

    move v9, v10

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->Z(IJ)I

    move-result v10

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->e0(II)I

    move-result v10

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->d0(I)I

    move-result v10

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->g0(I)I

    move-result v10

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->h0(II)I

    move-result v10

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->b0(II)I

    move-result v10

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v10

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v11

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/S0;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v10

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/vision/U;

    if-eqz v11, :cond_1

    check-cast v10, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v10

    goto/16 :goto_1

    :cond_1
    check-cast v10, Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->K(ILjava/lang/String;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->O(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->f0(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->a0(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->Y(II)I

    move-result v10

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->V(IJ)I

    move-result v10

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->T(IJ)I

    move-result v10

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->N(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->J(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_12
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/vision/F0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_13
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v11

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/S0;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->u(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->G(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->M(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->J(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->x(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->D(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->P(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->J(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->M(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->A(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->o(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->d(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->J(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {v3, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lcom/google/android/gms/internal/vision/S0;->M(Ljava/util/List;)I

    move-result v10

    if-lez v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v11

    invoke-static {v10, v11, v10, v9}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v9

    goto/16 :goto_2

    :pswitch_22
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->t(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_23
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->F(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_24
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->L(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_25
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->I(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_26
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->w(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_27
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->C(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_28
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->s(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_29
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v11

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/S0;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->l(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->O(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->I(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->L(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->z(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->m(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_30
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->b(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_31
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->I(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_32
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/S0;->L(ILjava/util/List;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/vision/O;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v11

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->P(ILcom/google/android/gms/internal/vision/O;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->k(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->Z(IJ)I

    move-result v10

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->b(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->e0(II)I

    move-result v10

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->d0(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->g0(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->b(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->h0(II)I

    move-result v10

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->b(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->b0(II)I

    move-result v10

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v11

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/S0;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/vision/U;

    if-eqz v11, :cond_2

    check-cast v10, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v10

    goto/16 :goto_1

    :cond_2
    check-cast v10, Ljava/lang/String;

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->K(ILjava/lang/String;)I

    move-result v10

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->O(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->f0(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->a0(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->b(JLjava/lang/Object;)I

    move-result v10

    invoke-static {v12, v10}, Lcom/google/android/gms/internal/vision/V;->Y(II)I

    move-result v10

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->k(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->V(IJ)I

    move-result v10

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/a1;->k(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/V;->T(IJ)I

    move-result v10

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->N(I)I

    move-result v10

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/vision/V;->J(I)I

    move-result v10

    goto/16 :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/j0;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/U0;->d()I

    move-result v0

    add-int/2addr v0, v9

    return v0

    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    move v11, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_3
    array-length v13, v2

    if-ge v9, v13, :cond_b

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v13

    aget v14, v2, v9

    and-int v15, v13, v6

    ushr-int/lit8 v15, v15, 0x14

    const/16 v6, 0x11

    if-gt v15, v6, :cond_6

    add-int/lit8 v6, v9, 0x2

    aget v6, v2, v6

    and-int v8, v6, v7

    ushr-int/lit8 v6, v6, 0x14

    const/16 v16, 0x1

    shl-int v6, v16, v6

    if-eq v8, v11, :cond_7

    int-to-long v11, v8

    invoke-virtual {v3, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_4
    and-int v8, v13, v7

    int-to-long v7, v8

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_45
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/O;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->P(ILcom/google/android/gms/internal/vision/O;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v6

    :goto_5
    add-int/2addr v10, v6

    goto/16 :goto_6

    :pswitch_46
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->Z(IJ)I

    move-result v6

    goto :goto_5

    :pswitch_47
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->e0(II)I

    move-result v6

    goto :goto_5

    :pswitch_48
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->d0(I)I

    move-result v6

    goto :goto_5

    :pswitch_49
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->g0(I)I

    move-result v6

    goto :goto_5

    :pswitch_4a
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->h0(II)I

    move-result v6

    goto :goto_5

    :pswitch_4b
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->b0(II)I

    move-result v6

    goto :goto_5

    :pswitch_4c
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v6

    goto :goto_5

    :pswitch_4d
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/S0;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v6

    goto :goto_5

    :pswitch_4e
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/vision/U;

    if-eqz v7, :cond_8

    check-cast v6, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v6

    goto/16 :goto_5

    :cond_8
    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->K(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_4f
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->O(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_50
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->f0(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_51
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->a0(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_52
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->Y(II)I

    move-result v6

    goto/16 :goto_5

    :pswitch_53
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->V(IJ)I

    move-result v6

    goto/16 :goto_5

    :pswitch_54
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->T(IJ)I

    move-result v6

    goto/16 :goto_5

    :pswitch_55
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->N(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_56
    invoke-virtual {v0, v14, v9, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->J(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_57
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/vision/F0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_58
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/S0;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_59
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->u(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_5a
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->G(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_5b
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->M(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_5c
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->J(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_5d
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->x(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_5e
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->D(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_5f
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->P(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_60
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->J(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_61
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->M(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_62
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->A(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_63
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->o(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_64
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->d(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_65
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->J(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_66
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/S0;->M(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->C(I)I

    move-result v7

    invoke-static {v6, v7, v6, v10}, Landroidx/recyclerview/widget/P;->a(IIII)I

    move-result v10

    goto/16 :goto_6

    :pswitch_67
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->t(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_68
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->F(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_69
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->L(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_6a
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->I(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_6b
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->w(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_6c
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->C(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_6d
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->s(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_6e
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/S0;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_6f
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->l(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_70
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->O(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_71
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->I(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_72
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->L(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_73
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->z(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_74
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->m(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_75
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->b(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_76
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->I(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_77
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/S0;->L(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_78
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/O;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->P(ILcom/google/android/gms/internal/vision/O;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_79
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->Z(IJ)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7a
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->e0(II)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7b
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->d0(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7c
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->g0(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7d
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->h0(II)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7e
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->b0(II)I

    move-result v6

    goto/16 :goto_5

    :pswitch_7f
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_80
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/S0;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_81
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/vision/U;

    if-eqz v7, :cond_9

    check-cast v6, Lcom/google/android/gms/internal/vision/U;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->Q(ILcom/google/android/gms/internal/vision/U;)I

    move-result v6

    goto/16 :goto_5

    :cond_9
    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->K(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_82
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->O(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_83
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->f0(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_84
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->a0(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_85
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/vision/V;->Y(II)I

    move-result v6

    goto/16 :goto_5

    :pswitch_86
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->V(IJ)I

    move-result v6

    goto/16 :goto_5

    :pswitch_87
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Lcom/google/android/gms/internal/vision/V;->T(IJ)I

    move-result v6

    goto/16 :goto_5

    :pswitch_88
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->N(I)I

    move-result v6

    goto/16 :goto_5

    :pswitch_89
    and-int/2addr v6, v12

    if-eqz v6, :cond_a

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/V;->J(I)I

    move-result v6

    goto/16 :goto_5

    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x3

    const/high16 v6, 0xff00000

    const v7, 0xfffff

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/j0;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/U0;->d()I

    move-result v0

    add-int/2addr v0, v10

    return v0

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

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/I0;->j:Lcom/google/android/gms/internal/vision/L0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->e:Lcom/google/android/gms/internal/vision/O;

    check-cast p0, Lcom/google/android/gms/internal/vision/j0;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/j0;->e(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;)V
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    int-to-long v7, v4

    aget v4, v1, v0

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/I0;->x(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v1, v2, v4, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/I0;->x(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v1, v2, v4, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/vision/S0;->a:Ljava/lang/Class;

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/F0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/E0;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/I0;->k:Lcom/google/android/gms/internal/vision/x0;

    invoke-virtual {v1, p1, p2, v7, v8}, Lcom/google/android/gms/internal/vision/x0;->a(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/I0;->r(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/vision/Z0;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/vision/Z0;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/I0;->r(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->h(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/vision/a1;->h(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/vision/Z0;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/vision/Z0;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/vision/Z0;->f(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->i(JLjava/lang/Object;)F

    move-result v1

    invoke-static {v1, v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->d(FJLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->j(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {v7, v8, p1, v1, v2}, Lcom/google/android/gms/internal/vision/a1;->f(JLjava/lang/Object;D)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/S0;->j(Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;)V

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

.method public final g(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    const/high16 v9, 0xff00000

    and-int/2addr v5, v9

    ushr-int/lit8 v5, v5, 0x14

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    move v4, v2

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_2
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/S0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->h(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->h(JLjava/lang/Object;)Z

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->i(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->i(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/vision/I0;->A(Lcom/google/android/gms/internal/vision/j0;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/vision/Z0;->j(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/vision/Z0;->j(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    check-cast p2, Lcom/google/android/gms/internal/vision/j0;

    iget-object p1, p2, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/U0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v4

    nop

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

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/I0;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v4

    aget v5, v0, v3

    const/high16 v6, 0xff00000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x14

    const/4 v7, 0x1

    const v8, 0xfffff

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lcom/google/android/gms/internal/vision/C0;->j(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->p(IJ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->q(II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->i(IJ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->c(II)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->h(II)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->o(II)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->e(ILcom/google/android/gms/internal/vision/U;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lcom/google/android/gms/internal/vision/C0;->f(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/vision/I0;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->g(IZ)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->m(II)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->n(IJ)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->k(II)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->l(IJ)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->d(IJ)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/vision/C0;->b(FI)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v5}, Lcom/google/android/gms/internal/vision/C0;->a(DI)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v4, v8

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/F0;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_13
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/android/gms/internal/vision/S0;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_1

    :pswitch_14
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_15
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_16
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_17
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_18
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_19
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_1a
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_1b
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_1c
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_1d
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_1e
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_1f
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_20
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_21
    and-int/2addr v4, v8

    int-to-long v8, v4

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/android/gms/internal/vision/S0;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_22
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_23
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_24
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_25
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_26
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_27
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_28
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/vision/S0;->p(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_1

    :pswitch_29
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/android/gms/internal/vision/S0;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_1

    :pswitch_2a
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/vision/S0;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_1

    :pswitch_2b
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_2c
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_2d
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_2e
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_2f
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_30
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_31
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_32
    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lcom/google/android/gms/internal/vision/S0;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lcom/google/android/gms/internal/vision/C0;->j(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->p(IJ)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->q(II)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->i(IJ)V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->c(II)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->h(II)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->o(II)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->e(ILcom/google/android/gms/internal/vision/U;)V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lcom/google/android/gms/internal/vision/C0;->f(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lcom/google/android/gms/internal/vision/I0;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->h(JLjava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->g(IZ)V

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->m(II)V

    goto :goto_1

    :pswitch_3f
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->n(IJ)V

    goto :goto_1

    :pswitch_40
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lcom/google/android/gms/internal/vision/C0;->k(II)V

    goto :goto_1

    :pswitch_41
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->l(IJ)V

    goto :goto_1

    :pswitch_42
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->d(IJ)V

    goto :goto_1

    :pswitch_43
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->i(JLjava/lang/Object;)F

    move-result v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/vision/C0;->b(FI)V

    goto :goto_1

    :pswitch_44
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/vision/Z0;->j(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v5}, Lcom/google/android/gms/internal/vision/C0;->a(DI)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/vision/j0;

    iget-object p0, p1, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/U0;->c(Lcom/google/android/gms/internal/vision/C0;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/I0;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    return-void

    nop

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

.method public final i(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/I0;->f:Z

    if-eqz v0, :cond_1c

    sget-object v9, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v0, p3

    move v2, v10

    move v5, v2

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_19

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/vision/i0;->d(I[BILcom/google/android/gms/internal/auth/A;)I

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

    iget v7, v15, Lcom/google/android/gms/internal/vision/I0;->d:I

    iget v8, v15, Lcom/google/android/gms/internal/vision/I0;->c:I

    if-le v3, v1, :cond_2

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v8, :cond_1

    if-gt v3, v7, :cond_1

    invoke-virtual {v15, v3, v2}, Lcom/google/android/gms/internal/vision/I0;->u(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    move v8, v1

    const/4 v7, -0x1

    goto :goto_3

    :cond_2
    if-lt v3, v8, :cond_1

    if-gt v3, v7, :cond_1

    invoke-virtual {v15, v3, v10}, Lcom/google/android/gms/internal/vision/I0;->u(II)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v8, v7, :cond_3

    move/from16 v20, v3

    move v2, v4

    move/from16 v28, v5

    move/from16 v17, v7

    move-object/from16 v29, v9

    move/from16 v18, v10

    move/from16 v19, v18

    move-object v15, v14

    goto/16 :goto_15

    :cond_3
    add-int/lit8 v1, v8, 0x1

    iget-object v2, v15, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget v1, v2, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v10, v18, 0x14

    const v17, 0xfffff

    and-int v7, v1, v17

    move/from16 v20, v3

    move/from16 p3, v4

    int-to-long v3, v7

    const/16 v7, 0x11

    move/from16 v21, v1

    if-gt v10, v7, :cond_f

    add-int/lit8 v7, v8, 0x2

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

    packed-switch v10, :pswitch_data_0

    :cond_7
    move/from16 v10, p3

    :goto_7
    move/from16 v24, v13

    move/from16 v13, p4

    goto/16 :goto_11

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v5, p3

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v10

    iget-wide v0, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/i0;->l(J)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v7

    move/from16 v13, p4

    :goto_8
    move v2, v8

    move v0, v10

    :goto_9
    move/from16 v1, v20

    move/from16 v6, v23

    :goto_a
    const/4 v10, 0x0

    goto/16 :goto_0

    :pswitch_1
    move/from16 v5, p3

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/i0;->C(I)I

    move-result v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v5, v6, v7

    move/from16 v13, p4

    :goto_c
    move v2, v8

    goto :goto_9

    :cond_8
    move v10, v5

    goto :goto_7

    :pswitch_2
    move/from16 v5, p3

    if-nez v0, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_3
    move/from16 v5, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->D([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_4
    move/from16 v5, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move/from16 v24, v13

    move/from16 v13, p4

    invoke-static {v0, v12, v5, v13, v11}, Lcom/google/android/gms/internal/vision/i0;->g(Lcom/google/android/gms/internal/vision/R0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :cond_9
    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    or-int v5, v6, v7

    goto :goto_c

    :cond_a
    move/from16 v24, v13

    move/from16 v13, p4

    :cond_b
    move v10, v5

    goto/16 :goto_11

    :pswitch_5
    move/from16 v5, p3

    move/from16 v24, v13

    const/4 v1, 0x2

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->z([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_e

    :cond_c
    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->B([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_e
    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_6
    move/from16 v5, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-nez v0, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v21, 0x0

    cmp-long v1, v1, v21

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    :goto_f
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/vision/a1;->h(Ljava/lang/Object;JZ)V

    goto :goto_d

    :pswitch_7
    move/from16 v5, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/vision/i0;->a(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v5, 0x4

    goto :goto_d

    :pswitch_8
    move/from16 v5, p3

    move/from16 v24, v13

    const/4 v1, 0x1

    move/from16 v13, p4

    if-ne v0, v1, :cond_b

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/vision/i0;->w(I[B)J

    move-result-wide v16

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v10, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_10
    add-int/lit8 v0, v10, 0x8

    goto :goto_d

    :pswitch_9
    move/from16 v10, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_a
    move/from16 v10, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v10

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
    move/from16 v10, p3

    move/from16 v24, v13

    move/from16 v13, p4

    if-ne v0, v1, :cond_e

    invoke-static {v10, v12}, Lcom/google/android/gms/internal/vision/i0;->A(I[B)F

    move-result v0

    invoke-static {v0, v3, v4, v14}, Lcom/google/android/gms/internal/vision/a1;->d(FJLjava/lang/Object;)V

    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_d

    :pswitch_c
    move/from16 v10, p3

    move/from16 v24, v13

    const/4 v1, 0x1

    move/from16 v13, p4

    if-ne v0, v1, :cond_e

    invoke-static {v10, v12}, Lcom/google/android/gms/internal/vision/i0;->y(I[B)D

    move-result-wide v0

    invoke-static {v3, v4, v14, v0, v1}, Lcom/google/android/gms/internal/vision/a1;->f(JLjava/lang/Object;D)V

    goto :goto_10

    :cond_e
    :goto_11
    move/from16 v28, v6

    move/from16 v18, v8

    move-object/from16 v29, v9

    move v2, v10

    move-object v15, v14

    move/from16 v6, v23

    const/16 v17, -0x1

    const/16 v19, 0x0

    goto/16 :goto_15

    :cond_f
    move/from16 v7, p3

    const v24, 0xfffff

    const/16 v1, 0x1b

    if-ne v10, v1, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/t0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/t0;->d()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0xa

    goto :goto_12

    :cond_10
    shl-int/lit8 v1, v1, 0x1

    :goto_12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/t0;->k(I)Lcom/google/android/gms/internal/vision/t0;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v10, v0

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v10

    move v10, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/i0;->e(Lcom/google/android/gms/internal/vision/R0;I[BIILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move v5, v7

    move v2, v8

    move v6, v10

    move/from16 v1, v20

    goto/16 :goto_a

    :cond_12
    move v10, v6

    move/from16 v28, v5

    move v15, v7

    move/from16 v18, v8

    move-object/from16 v29, v9

    move/from16 v27, v10

    const/16 v17, -0x1

    const/16 v19, 0x0

    goto/16 :goto_14

    :cond_13
    move/from16 v30, v6

    move v6, v5

    move/from16 v5, v30

    const/16 v1, 0x31

    if-gt v10, v1, :cond_15

    move/from16 v1, v21

    int-to-long v1, v1

    move/from16 p3, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v25, v3

    move v3, v7

    move/from16 v4, p4

    move/from16 v27, v5

    move/from16 v5, v16

    move/from16 v28, v6

    move/from16 v6, v20

    move v15, v7

    const/16 v17, -0x1

    move/from16 v7, p3

    move/from16 v18, v8

    move-object/from16 v29, v9

    move/from16 v23, v10

    const/16 v19, 0x0

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move-wide/from16 v12, v25

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/I0;->k(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v15, :cond_14

    move-object/from16 v15, p1

    :goto_13
    move v2, v0

    move/from16 v6, v27

    goto/16 :goto_15

    :cond_14
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v18

    move/from16 v10, v19

    move/from16 v1, v20

    move/from16 v6, v27

    move/from16 v5, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    :cond_15
    move/from16 p3, v0

    move-wide/from16 v25, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move v15, v7

    move/from16 v18, v8

    move-object/from16 v29, v9

    move/from16 v23, v10

    move/from16 v1, v21

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_17

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_16

    :goto_14
    move v2, v15

    move/from16 v6, v27

    move-object/from16 v15, p1

    goto :goto_15

    :cond_16
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, v18

    move-wide/from16 v10, v25

    invoke-virtual {v14, v10, v11, v13, v15}, Lcom/google/android/gms/internal/vision/I0;->q(JILjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_17
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v12, v15

    move/from16 v13, v18

    move-wide/from16 v10, v25

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v20

    move v14, v12

    move v12, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/I0;->j(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v14, :cond_18

    goto :goto_13

    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/I0;->E(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/U0;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/i0;->c(I[BIILcom/google/android/gms/internal/vision/U0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v2, v18

    move/from16 v10, v19

    move/from16 v1, v20

    :goto_16
    move/from16 v5, v28

    move-object/from16 v9, v29

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v2, v18

    move/from16 v10, v19

    move/from16 v1, v20

    move/from16 v6, v27

    goto :goto_16

    :cond_19
    move/from16 v28, v5

    move v10, v6

    move-object/from16 v29, v9

    move-object v15, v14

    const v1, 0xfffff

    if-eq v10, v1, :cond_1a

    int-to-long v1, v10

    move/from16 v5, v28

    move-object/from16 v3, v29

    invoke-virtual {v3, v15, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1a
    move/from16 v4, p4

    if-ne v0, v4, :cond_1b

    return-void

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->c()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_1c
    move v4, v13

    move-object v15, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/I0;->l(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I

    return-void

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

.method public final j(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    add-int/lit8 v7, v6, 0x2

    iget-object v13, v0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget v7, v13, v7

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x2

    const/16 v16, 0x0

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/i0;->f(Lcom/google/android/gms/internal/vision/R0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    :cond_0
    move-object/from16 v2, v16

    if-nez v2, :cond_1

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/i0;->l(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/i0;->C(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/I0;->z(I)Lcom/google/android/gms/internal/vision/o0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/vision/o0;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/I0;->E(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/U0;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/vision/U0;->a(ILjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_9

    :cond_3
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_7

    :pswitch_4
    if-ne v5, v7, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->D([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v5, v7, :cond_a

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/vision/i0;->g(Lcom/google/android/gms/internal/vision/R0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_4

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    :cond_4
    move-object/from16 v2, v16

    if-nez v2, :cond_5

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_6
    if-ne v5, v7, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v2, :cond_6

    const-string v2, ""

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_6
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_8

    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/vision/d1;->b([BII)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->d()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_7
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_8
    const/4 v0, 0x5

    if-ne v5, v0, :cond_a

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->a(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    add-int/lit8 v0, v4, 0x4

    goto :goto_7

    :pswitch_9
    if-ne v5, v15, :cond_a

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->w(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    add-int/lit8 v0, v4, 0x8

    goto :goto_7

    :pswitch_a
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_b
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_c
    const/4 v0, 0x5

    if-ne v5, v0, :cond_a

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->A(I[B)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_d
    if-ne v5, v15, :cond_a

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->y(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :cond_a
    :goto_8
    move v0, v4

    :goto_9
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

.method public final k(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/vision/t0;

    invoke-interface {v12}, Lcom/google/android/gms/internal/vision/t0;->d()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v13, v14

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/vision/t0;->k(I)Lcom/google/android/gms/internal/vision/t0;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/i0;->f(Lcom/google/android/gms/internal/vision/R0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v2, v8, :cond_2

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/i0;->f(Lcom/google/android/gms/internal/vision/R0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    move v0, v4

    goto/16 :goto_f

    :pswitch_1
    if-ne v6, v11, :cond_5

    check-cast v12, Lcom/google/android/gms/internal/vision/A0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_4

    if-ne v0, v1, :cond_3

    goto/16 :goto_f

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    throw v10

    :cond_5
    if-eqz v6, :cond_6

    goto/16 :goto_e

    :cond_6
    check-cast v12, Lcom/google/android/gms/internal/vision/A0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    throw v10

    :pswitch_2
    if-ne v6, v11, :cond_9

    check-cast v12, Lcom/google/android/gms/internal/vision/l0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    :goto_3
    if-ge v0, v1, :cond_7

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/i0;->C(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/vision/l0;->i(I)V

    goto :goto_3

    :cond_7
    if-ne v0, v1, :cond_8

    goto/16 :goto_f

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v6, :cond_2

    check-cast v12, Lcom/google/android/gms/internal/vision/l0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/i0;->C(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/l0;->i(I)V

    :goto_4
    if-ge v0, v5, :cond_36

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v2, v4, :cond_36

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/i0;->C(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/l0;->i(I)V

    goto :goto_4

    :pswitch_3
    if-ne v6, v11, :cond_a

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/i0;->k([BILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    goto :goto_5

    :cond_a
    if-nez v6, :cond_2

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/i0;->b(I[BIILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    :goto_5
    check-cast v1, Lcom/google/android/gms/internal/vision/j0;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    sget-object v4, Lcom/google/android/gms/internal/vision/U0;->f:Lcom/google/android/gms/internal/vision/U0;

    if-ne v3, v4, :cond_b

    goto :goto_6

    :cond_b
    move-object v10, v3

    :goto_6
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/I0;->z(I)Lcom/google/android/gms/internal/vision/o0;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    check-cast v12, Lcom/google/android/gms/internal/vision/t0;

    move/from16 v4, p6

    invoke-static {v4, v12, v3, v10, v0}, Lcom/google/android/gms/internal/vision/S0;->f(ILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/vision/o0;Lcom/google/android/gms/internal/vision/U0;Lcom/google/android/gms/internal/vision/T0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/U0;

    if-eqz v0, :cond_c

    iput-object v0, v1, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    :cond_c
    move v0, v2

    goto/16 :goto_f

    :pswitch_4
    if-ne v6, v11, :cond_2

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v1, :cond_12

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_11

    if-nez v1, :cond_d

    sget-object v1, Lcom/google/android/gms/internal/vision/U;->c:Lcom/google/android/gms/internal/vision/U;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/vision/U;->l([BII)Lcom/google/android/gms/internal/vision/U;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v0, v1

    :goto_8
    if-ge v0, v5, :cond_36

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v2, v4, :cond_36

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v1, :cond_10

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_f

    if-nez v1, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/vision/U;->c:Lcom/google/android/gms/internal/vision/U;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/vision/U;->l([BII)Lcom/google/android/gms/internal/vision/U;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->b()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->b()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :pswitch_5
    if-ne v6, v11, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/i0;->e(Lcom/google/android/gms/internal/vision/R0;I[BIILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_f

    :pswitch_6
    if-ne v6, v11, :cond_2

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    const-string v1, ""

    if-nez v0, :cond_17

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v4, :cond_16

    if-nez v4, :cond_13

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v0, v4

    :goto_a
    if-ge v0, v5, :cond_36

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v2, v6, :cond_36

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v4, :cond_15

    if-nez v4, :cond_14

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->b()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->b()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v4, :cond_1e

    if-nez v4, :cond_18

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_b

    :cond_18
    add-int v6, v0, v4

    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/vision/d1;->b([BII)Z

    move-result v8

    if-eqz v8, :cond_1d

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    if-ge v6, v5, :cond_1c

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v2, v4, :cond_1c

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ltz v0, :cond_1b

    if-nez v0, :cond_19

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    add-int v4, v6, v0

    invoke-static {v3, v6, v4}, Lcom/google/android/gms/internal/vision/d1;->b([BII)Z

    move-result v8

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_b

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->d()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->b()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_1c
    move v0, v6

    goto/16 :goto_f

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->d()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->b()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :pswitch_7
    if-ne v6, v11, :cond_21

    check-cast v12, Lcom/google/android/gms/internal/vision/S;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_20

    if-ne v0, v1, :cond_1f

    goto/16 :goto_f

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_20
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    throw v10

    :cond_21
    if-eqz v6, :cond_22

    goto/16 :goto_e

    :cond_22
    check-cast v12, Lcom/google/android/gms/internal/vision/S;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    throw v10

    :pswitch_8
    if-ne v6, v11, :cond_25

    check-cast v12, Lcom/google/android/gms/internal/vision/l0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    :goto_c
    if-ge v0, v1, :cond_23

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/vision/i0;->a(I[B)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/vision/l0;->i(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_c

    :cond_23
    if-ne v0, v1, :cond_24

    goto/16 :goto_f

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_25
    if-ne v6, v9, :cond_2

    check-cast v12, Lcom/google/android/gms/internal/vision/l0;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->a(I[B)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/vision/l0;->i(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_d
    if-ge v0, v5, :cond_36

    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v2, v4, :cond_36

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/i0;->a(I[B)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/vision/l0;->i(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_d

    :pswitch_9
    if-ne v6, v11, :cond_28

    check-cast v12, Lcom/google/android/gms/internal/vision/A0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_27

    if-ne v0, v1, :cond_26

    goto/16 :goto_f

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_27
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/vision/i0;->w(I[B)J

    throw v10

    :cond_28
    if-eq v6, v14, :cond_29

    goto/16 :goto_e

    :cond_29
    check-cast v12, Lcom/google/android/gms/internal/vision/A0;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->w(I[B)J

    throw v10

    :pswitch_a
    if-ne v6, v11, :cond_2a

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/i0;->k([BILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_f

    :cond_2a
    if-nez v6, :cond_2

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/i0;->b(I[BIILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_f

    :pswitch_b
    if-ne v6, v11, :cond_2d

    check-cast v12, Lcom/google/android/gms/internal/vision/A0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2c

    if-ne v0, v1, :cond_2b

    goto :goto_f

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_2c
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    throw v10

    :cond_2d
    if-eqz v6, :cond_2e

    goto :goto_e

    :cond_2e
    check-cast v12, Lcom/google/android/gms/internal/vision/A0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    throw v10

    :pswitch_c
    if-ne v6, v11, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/f0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_30

    if-ne v0, v1, :cond_2f

    goto :goto_f

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_30
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/vision/i0;->A(I[B)F

    throw v10

    :cond_31
    if-eq v6, v9, :cond_32

    goto :goto_e

    :cond_32
    check-cast v12, Lcom/google/android/gms/internal/vision/f0;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->A(I[B)F

    throw v10

    :pswitch_d
    if-ne v6, v11, :cond_35

    check-cast v12, Lcom/google/android/gms/internal/vision/X;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_34

    if-ne v0, v1, :cond_33

    goto :goto_f

    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->a()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_34
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/vision/i0;->y(I[B)D

    throw v10

    :cond_35
    if-eq v6, v14, :cond_37

    :goto_e
    goto/16 :goto_2

    :cond_36
    :goto_f
    return v0

    :cond_37
    check-cast v12, Lcom/google/android/gms/internal/vision/X;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/i0;->y(I[B)D

    throw v10

    nop

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

.method public final l(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    :goto_0
    iget-object v8, v15, Lcom/google/android/gms/internal/vision/I0;->a:[I

    const/16 v17, 0x0

    if-ge v0, v13, :cond_1f

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/vision/i0;->d(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    goto :goto_1

    :cond_0
    move/from16 v31, v3

    move v3, v0

    move/from16 v0, v31

    :goto_1
    ushr-int/lit8 v6, v3, 0x3

    and-int/lit8 v7, v3, 0x7

    move/from16 p3, v0

    iget v0, v15, Lcom/google/android/gms/internal/vision/I0;->d:I

    move/from16 v20, v3

    iget v3, v15, Lcom/google/android/gms/internal/vision/I0;->c:I

    const/4 v11, 0x3

    if-le v6, v1, :cond_2

    div-int/2addr v2, v11

    if-lt v6, v3, :cond_1

    if-gt v6, v0, :cond_1

    invoke-virtual {v15, v6, v2}, Lcom/google/android/gms/internal/vision/I0;->u(II)I

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
    if-lt v6, v3, :cond_3

    if-gt v6, v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v15, v6, v3}, Lcom/google/android/gms/internal/vision/I0;->u(II)I

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

    move/from16 v19, v3

    move/from16 v30, v19

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v18, v6

    move-object/from16 v16, v8

    move-object/from16 v29, v10

    move-object v15, v14

    move/from16 v7, v20

    move/from16 v6, p5

    move/from16 v20, v1

    goto/16 :goto_16

    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget v0, v8, v0

    const/high16 v18, 0xff00000

    and-int v18, v0, v18

    ushr-int/lit8 v11, v18, 0x14

    const v16, 0xfffff

    and-int v1, v0, v16

    int-to-long v12, v1

    const/16 v1, 0x11

    if-gt v11, v1, :cond_13

    add-int/lit8 v1, v2, 0x2

    aget v1, v8, v1

    ushr-int/lit8 v22, v1, 0x14

    const/4 v3, 0x1

    shl-int v22, v3, v22

    move-object/from16 v24, v8

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

    move-object/from16 v12, p2

    move/from16 v11, p3

    move v13, v2

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    :cond_7
    :goto_6
    move/from16 v20, v6

    goto/16 :goto_13

    :pswitch_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_9

    shl-int/lit8 v0, v6, 0x3

    or-int/lit8 v4, v0, 0x4

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move/from16 v11, p3

    const/16 v18, -0x1

    move-object/from16 v1, p2

    move v7, v2

    move v2, v11

    move/from16 v11, v20

    const/16 v19, 0x0

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/i0;->f(Lcom/google/android/gms/internal/vision/R0;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v8, v22

    if-nez v1, :cond_8

    move-object/from16 v4, p6

    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_8
    move-object/from16 v4, p6

    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object v1

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v1, v8, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v2, v7

    move v5, v9

    move v3, v11

    move/from16 v11, p5

    :goto_8
    move-object v9, v4

    :goto_9
    move v4, v1

    move v1, v6

    goto/16 :goto_0

    :cond_9
    move/from16 v11, p3

    move-object/from16 v4, p6

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v12, p2

    move v13, v2

    move/from16 p3, v9

    move/from16 v9, v20

    goto :goto_6

    :pswitch_1
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 v5, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    if-nez v7, :cond_a

    move-wide v0, v12

    move-object/from16 v12, p2

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    move-wide/from16 v20, v0

    iget-wide v0, v4, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/i0;->l(J)J

    move-result-wide v23

    move-wide/from16 v25, v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v13, v2

    move-wide/from16 v2, v25

    move-object v11, v4

    move/from16 p3, v9

    move v9, v5

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v8, v22

    move/from16 v5, p3

    move v1, v6

    move v0, v7

    move v3, v9

    move-object v9, v11

    move v2, v13

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    move-object/from16 v12, p2

    move v13, v2

    move/from16 p3, v9

    move v9, v5

    goto/16 :goto_6

    :pswitch_2
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move-wide/from16 v25, v12

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v12, p2

    move v13, v2

    if-nez v7, :cond_7

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v4, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/i0;->C(I)I

    move-result v1

    move-wide/from16 v2, v25

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    or-int v1, v8, v22

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move v2, v13

    move/from16 v13, p4

    goto/16 :goto_8

    :pswitch_3
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-wide/from16 v31, v12

    move-object/from16 v12, p2

    move v13, v2

    move-wide/from16 v2, v31

    if-nez v7, :cond_7

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v4, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/vision/I0;->z(I)Lcom/google/android/gms/internal/vision/o0;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/vision/o0;->k(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v5, v0

    goto :goto_b

    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/I0;->E(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/U0;

    move-result-object v2

    move v5, v0

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/internal/vision/U0;->a(ILjava/lang/Object;)V

    move/from16 v11, p5

    move v0, v5

    move v1, v6

    move v3, v9

    move v2, v13

    move/from16 v5, p3

    move/from16 v13, p4

    move-object v9, v4

    move v4, v8

    goto/16 :goto_0

    :goto_b
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v0, v8, v22

    move/from16 v11, p5

    move v1, v6

    move v3, v9

    move v2, v13

    move/from16 v13, p4

    move-object v9, v4

    move v4, v0

    move v0, v5

    move/from16 v5, p3

    goto/16 :goto_0

    :pswitch_4
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-wide/from16 v31, v12

    move-object/from16 v12, p2

    move v13, v2

    move-wide/from16 v2, v31

    if-ne v7, v0, :cond_7

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->D([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_5
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-wide/from16 v31, v12

    move-object/from16 v12, p2

    move v13, v2

    move-wide/from16 v2, v31

    if-ne v7, v0, :cond_e

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move/from16 v5, p4

    invoke-static {v0, v12, v11, v5, v4}, Lcom/google/android/gms/internal/vision/i0;->g(Lcom/google/android/gms/internal/vision/R0;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v8, v22

    if-nez v1, :cond_d

    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :cond_d
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v7, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object v1

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_c
    or-int v1, v8, v22

    move/from16 v11, p5

    move v3, v9

    move v2, v13

    move-object v9, v4

    move v13, v5

    move/from16 v5, p3

    goto/16 :goto_9

    :cond_e
    move/from16 v5, p4

    goto/16 :goto_6

    :pswitch_6
    move/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/4 v1, 0x2

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-wide/from16 v31, v12

    move-object/from16 v12, p2

    move v13, v2

    move-wide/from16 v2, v31

    if-ne v7, v1, :cond_7

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_f

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->z([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_d

    :cond_f
    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->B([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_d
    iget-object v1, v4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_7
    move/from16 v11, p3

    move/from16 v5, p4

    move-object/from16 v4, p6

    move/from16 p3, v9

    move-wide v0, v12

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object/from16 v12, p2

    move v13, v2

    if-nez v7, :cond_7

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    move/from16 v20, v6

    iget-wide v5, v4, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v23, 0x0

    cmp-long v5, v5, v23

    if-eqz v5, :cond_10

    goto :goto_e

    :cond_10
    move/from16 v3, v19

    :goto_e
    invoke-static {v14, v0, v1, v3}, Lcom/google/android/gms/internal/vision/a1;->h(Ljava/lang/Object;JZ)V

    or-int v0, v8, v22

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move/from16 v1, v20

    move-object v9, v4

    move v4, v0

    move v0, v2

    move v2, v13

    move/from16 v13, p4

    goto/16 :goto_0

    :pswitch_8
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v20, v6

    move-wide v5, v12

    move-object/from16 v12, p2

    move v13, v2

    if-ne v7, v1, :cond_12

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/vision/i0;->a(I[B)I

    move-result v0

    invoke-virtual {v10, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v11, 0x4

    :goto_f
    or-int v1, v8, v22

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move v2, v13

    move/from16 v13, p4

    move-object v9, v4

    move v4, v1

    move/from16 v1, v20

    goto/16 :goto_0

    :pswitch_9
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v20, v6

    move-wide v5, v12

    move-object/from16 v12, p2

    move v13, v2

    if-ne v7, v3, :cond_11

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/vision/i0;->w(I[B)J

    move-result-wide v23

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v5

    move-object v6, v4

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v11, 0x8

    or-int v4, v8, v22

    move/from16 v5, p3

    move/from16 v11, p5

    move v3, v9

    move v2, v13

    move/from16 v1, v20

    move/from16 v13, p4

    move-object v9, v6

    goto/16 :goto_0

    :cond_11
    move-object v6, v4

    goto/16 :goto_13

    :pswitch_a
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v20, v6

    move-wide v5, v12

    move-object/from16 v12, p2

    move v13, v2

    if-nez v7, :cond_12

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->j([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v4, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v10, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f

    :pswitch_b
    move/from16 v11, p3

    move-object/from16 v4, p6

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v20, v6

    move-wide v5, v12

    move-object/from16 v12, p2

    move v13, v2

    if-nez v7, :cond_12

    invoke-static {v12, v11, v4}, Lcom/google/android/gms/internal/vision/i0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v7

    iget-wide v2, v4, Lcom/google/android/gms/internal/auth/A;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-wide v2, v5

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v8, v22

    move/from16 v5, p3

    move/from16 v11, p5

    move v0, v7

    :goto_10
    move v3, v9

    move v2, v13

    move/from16 v1, v20

    :goto_11
    move/from16 v13, p4

    move-object/from16 v9, p6

    goto/16 :goto_0

    :pswitch_c
    move/from16 v11, p3

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v20, v6

    move-wide v5, v12

    move-object/from16 v12, p2

    move v13, v2

    if-ne v7, v1, :cond_12

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/vision/i0;->A(I[B)F

    move-result v0

    invoke-static {v0, v5, v6, v14}, Lcom/google/android/gms/internal/vision/a1;->d(FJLjava/lang/Object;)V

    add-int/lit8 v0, v11, 0x4

    :goto_12
    or-int v4, v8, v22

    move/from16 v5, p3

    move/from16 v11, p5

    goto :goto_10

    :pswitch_d
    move/from16 v11, p3

    move/from16 p3, v9

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v20, v6

    move-wide v5, v12

    move-object/from16 v12, p2

    move v13, v2

    if-ne v7, v3, :cond_12

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/vision/i0;->y(I[B)D

    move-result-wide v0

    invoke-static {v5, v6, v14, v0, v1}, Lcom/google/android/gms/internal/vision/a1;->f(JLjava/lang/Object;D)V

    add-int/lit8 v0, v11, 0x8

    goto :goto_12

    :cond_12
    :goto_13
    move/from16 v22, p3

    move/from16 v6, p5

    move/from16 v21, v8

    move v7, v9

    move-object/from16 v29, v10

    move v2, v11

    move/from16 v30, v13

    move-object v15, v14

    move-object/from16 v16, v24

    move/from16 v31, v20

    move/from16 v20, v18

    move/from16 v18, v31

    goto/16 :goto_16

    :cond_13
    move-object/from16 v24, v8

    move/from16 v9, v20

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v8, p3

    move/from16 v20, v6

    move-wide/from16 v31, v12

    move-object/from16 v12, p2

    move v13, v2

    move-wide/from16 v2, v31

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_17

    const/4 v1, 0x2

    if-ne v7, v1, :cond_16

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/t0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/t0;->d()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_14

    const/16 v1, 0xa

    goto :goto_14

    :cond_14
    shl-int/lit8 v1, v1, 0x1

    :goto_14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/t0;->k(I)Lcom/google/android/gms/internal/vision/t0;

    move-result-object v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object v6, v0

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    move v1, v9

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v21, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v6

    move/from16 v31, v20

    move/from16 v20, v18

    move/from16 v18, v31

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/i0;->e(Lcom/google/android/gms/internal/vision/R0;I[BIILcom/google/android/gms/internal/vision/t0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move/from16 v11, p5

    move v3, v9

    move v2, v13

    move/from16 v1, v18

    move/from16 v4, v21

    move/from16 v5, v22

    goto/16 :goto_11

    :cond_16
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v31, v20

    move/from16 v20, v18

    move/from16 v18, v31

    move v15, v8

    move/from16 p3, v9

    move-object/from16 v29, v10

    move/from16 v30, v13

    move-object/from16 v16, v24

    goto/16 :goto_15

    :cond_17
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v31, v20

    move/from16 v20, v18

    move/from16 v18, v31

    const/16 v1, 0x31

    if-gt v11, v1, :cond_19

    int-to-long v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move-object/from16 v2, p2

    move-wide/from16 v25, v3

    move v3, v8

    move/from16 v4, p4

    move-wide/from16 v27, v5

    move v5, v9

    move/from16 v6, v18

    move v15, v8

    move-object/from16 v16, v24

    move v8, v13

    move/from16 p3, v9

    move-object/from16 v29, v10

    move-wide/from16 v9, v27

    move/from16 v30, v13

    move-wide/from16 v12, v25

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/I0;->k(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v15, :cond_18

    move-object/from16 v15, p1

    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v0

    goto/16 :goto_16

    :cond_18
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v18

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v10, v29

    move/from16 v2, v30

    goto/16 :goto_0

    :cond_19
    move-wide/from16 v25, v2

    move v15, v8

    move/from16 p3, v9

    move-object/from16 v29, v10

    move/from16 v30, v13

    move-object/from16 v16, v24

    const/16 v1, 0x32

    if-ne v11, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v7, v1, :cond_1a

    :goto_15
    move/from16 v7, p3

    move/from16 v6, p5

    move v2, v15

    move-object/from16 v15, p1

    goto :goto_16

    :cond_1a
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v9, v25

    move/from16 v13, v30

    invoke-virtual {v14, v9, v10, v13, v15}, Lcom/google/android/gms/internal/vision/I0;->q(JILjava/lang/Object;)V

    throw v17

    :cond_1b
    move-object/from16 v14, p0

    move v8, v0

    move v12, v15

    move-wide/from16 v9, v25

    move/from16 v13, v30

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v18

    move-wide/from16 v23, v9

    move v9, v11

    move-wide/from16 v10, v23

    move v14, v12

    move v12, v13

    move/from16 v23, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/I0;->j(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move/from16 v7, p3

    if-ne v0, v14, :cond_1e

    move/from16 v6, p5

    move v2, v0

    move/from16 v30, v23

    :goto_16
    if-ne v7, v6, :cond_1d

    if-nez v6, :cond_1c

    goto :goto_18

    :cond_1c
    move v0, v2

    move v3, v7

    move/from16 v4, v21

    move/from16 v5, v22

    :goto_17
    const v1, 0xfffff

    goto :goto_1a

    :cond_1d
    :goto_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/I0;->E(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/U0;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/i0;->c(I[BIILcom/google/android/gms/internal/vision/U0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v11, v6

    move v3, v7

    move-object v14, v15

    move/from16 v1, v18

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v10, v29

    move/from16 v2, v30

    :goto_19
    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v7

    move-object v14, v15

    move/from16 v1, v18

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v2, v23

    move-object/from16 v10, v29

    goto :goto_19

    :cond_1f
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v16, v8

    move-object/from16 v29, v10

    move v6, v11

    move-object v15, v14

    goto :goto_17

    :goto_1a
    if-eq v5, v1, :cond_20

    int-to-long v7, v5

    move-object/from16 v2, v29

    invoke-virtual {v2, v15, v7, v8, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    move-object/from16 v2, p0

    iget v4, v2, Lcom/google/android/gms/internal/vision/I0;->h:I

    :goto_1b
    iget v5, v2, Lcom/google/android/gms/internal/vision/I0;->i:I

    if-ge v4, v5, :cond_23

    iget-object v5, v2, Lcom/google/android/gms/internal/vision/I0;->g:[I

    aget v5, v5, v4

    aget v7, v16, v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v7

    and-int/2addr v7, v1

    int-to-long v7, v7

    invoke-static {v7, v8, v15}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_21

    goto :goto_1c

    :cond_21
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/vision/I0;->z(I)Lcom/google/android/gms/internal/vision/o0;

    move-result-object v8

    if-nez v8, :cond_22

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_22
    iget-object v0, v2, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Lcom/google/android/gms/internal/vision/E0;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/F0;->c(Ljava/lang/Object;)V

    throw v17

    :cond_23
    if-nez v6, :cond_25

    move/from16 v1, p4

    if-ne v0, v1, :cond_24

    goto :goto_1d

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->c()Lcom/google/android/gms/internal/vision/s0;

    move-result-object v0

    throw v0

    :cond_25
    move/from16 v1, p4

    if-gt v0, v1, :cond_26

    if-ne v3, v6, :cond_26

    :goto_1d
    return v0

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/vision/s0;->c()Lcom/google/android/gms/internal/vision/s0;

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

.method public final n(I)Lcom/google/android/gms/internal/vision/R0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/R0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/vision/O0;->c:Lcom/google/android/gms/internal/vision/O0;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/O0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final q(JILjava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p4, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/F0;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/vision/F0;->f()Lcom/google/android/gms/internal/vision/E0;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/vision/F0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/E0;

    invoke-virtual {v0, p4, p1, p2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/vision/F0;->c(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;I)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/vision/I0;->t(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/I0;->w(Lcom/google/android/gms/internal/vision/j0;I)V

    :cond_2
    return-void
.end method

.method public final s(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    const/high16 p1, 0xff00000

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/U;->c:Lcom/google/android/gms/internal/vision/U;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/U;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

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
    instance-of p1, p0, Lcom/google/android/gms/internal/vision/U;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/vision/U;->c:Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/U;->equals(Ljava/lang/Object;)Z

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
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->h(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->i(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/vision/Z0;->j(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    sget-object p1, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

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

.method public final u(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

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

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final v(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final w(Lcom/google/android/gms/internal/vision/j0;I)V
    .locals 4

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p2, 0x1

    shl-int p0, p2, p0

    sget-object p2, Lcom/google/android/gms/internal/vision/a1;->c:Lcom/google/android/gms/internal/vision/Z0;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/vision/Z0;->k(JLjava/lang/Object;)I

    move-result p2

    or-int/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;I)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    aget v2, v1, p3

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {p0, v2, p3, p2}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2, p3, p1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/vision/n0;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/j0;

    move-result-object p0

    invoke-static {v4, v5, p1, p0}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p2, p3, v2, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {v4, v5, p1, p2}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p2, p3, v2, p1}, Lcom/google/android/gms/internal/vision/a1;->e(JILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final y(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/vision/I0;->a:[I

    array-length v4, v3

    sget-object v5, Lcom/google/android/gms/internal/vision/I0;->o:Lsun/misc/Unsafe;

    const v6, 0xfffff

    move v9, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v4, :cond_5

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->B(I)I

    move-result v11

    aget v12, v3, v8

    const/high16 v13, 0xff00000

    and-int/2addr v13, v11

    ushr-int/lit8 v13, v13, 0x14

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_1

    add-int/lit8 v14, v8, 0x2

    aget v14, v3, v14

    and-int v7, v14, v6

    if-eq v7, v9, :cond_0

    int-to-long v9, v7

    invoke-virtual {v5, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    move v9, v7

    :cond_0
    ushr-int/lit8 v7, v14, 0x14

    shl-int v7, v15, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-int/2addr v11, v6

    move/from16 v16, v7

    int-to-long v6, v11

    packed-switch v13, :pswitch_data_0

    :cond_2
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->j(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->p(IJ)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->q(II)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->i(IJ)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->c(II)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->h(II)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->o(II)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->e(ILcom/google/android/gms/internal/vision/U;)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->f(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/android/gms/internal/vision/I0;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->g(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->m(II)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->n(IJ)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->C(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->k(II)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->l(IJ)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/I0;->D(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->d(IJ)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v6, v12}, Lcom/google/android/gms/internal/vision/C0;->b(FI)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/vision/I0;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v12}, Lcom/google/android/gms/internal/vision/C0;->a(DI)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->v(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/I0;->m:Lcom/google/android/gms/internal/vision/F0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/F0;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/vision/S0;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_2

    :pswitch_14
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_15
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_16
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_17
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_18
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_19
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_1a
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_1b
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_1c
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_1d
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_1e
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_1f
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_20
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_21
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Lcom/google/android/gms/internal/vision/S0;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_2

    :pswitch_22
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/vision/S0;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    :goto_3
    move v13, v12

    goto/16 :goto_4

    :pswitch_23
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/vision/S0;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto :goto_3

    :pswitch_24
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/vision/S0;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto :goto_3

    :pswitch_25
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/vision/S0;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto :goto_3

    :pswitch_26
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/vision/S0;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto :goto_3

    :pswitch_27
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/vision/S0;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto :goto_3

    :pswitch_28
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/vision/S0;->p(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_2

    :pswitch_29
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/vision/S0;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_2

    :pswitch_2a
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/vision/S0;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_2

    :pswitch_2b
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/vision/S0;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/C0;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->j(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->p(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->q(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->i(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->c(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->h(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->o(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->e(ILcom/google/android/gms/internal/vision/U;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/I0;->n(I)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->f(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/android/gms/internal/vision/I0;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/a1;->o(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->g(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->m(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->n(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/vision/C0;->k(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->l(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/vision/C0;->d(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/a1;->p(JLjava/lang/Object;)F

    move-result v6

    invoke-virtual {v2, v6, v12}, Lcom/google/android/gms/internal/vision/C0;->b(FI)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/vision/a1;->s(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v12}, Lcom/google/android/gms/internal/vision/C0;->a(DI)V

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x3

    const v6, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/I0;->l:Lcom/google/android/gms/internal/vision/T0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/vision/j0;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/j0;->zzb:Lcom/google/android/gms/internal/vision/U0;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/vision/U0;->c(Lcom/google/android/gms/internal/vision/C0;)V

    return-void

    nop

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

.method public final z(I)Lcom/google/android/gms/internal/vision/o0;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/I0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/vision/o0;

    return-object p0
.end method
