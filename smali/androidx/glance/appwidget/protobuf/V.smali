.class public final Landroidx/glance/appwidget/protobuf/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/f0;


# static fields
.field public static final o:[I

.field public static final p:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/glance/appwidget/protobuf/a;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Landroidx/glance/appwidget/protobuf/X;

.field public final l:Landroidx/glance/appwidget/protobuf/L;

.field public final m:Landroidx/glance/appwidget/protobuf/j0;

.field public final n:Landroidx/glance/appwidget/protobuf/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/glance/appwidget/protobuf/V;->o:[I

    invoke-static {}, Landroidx/glance/appwidget/protobuf/r0;->m()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/a;Z[IIILandroidx/glance/appwidget/protobuf/X;Landroidx/glance/appwidget/protobuf/L;Landroidx/glance/appwidget/protobuf/j0;Landroidx/glance/appwidget/protobuf/o;Landroidx/glance/appwidget/protobuf/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    iput-object p2, p0, Landroidx/glance/appwidget/protobuf/V;->b:[Ljava/lang/Object;

    iput p3, p0, Landroidx/glance/appwidget/protobuf/V;->c:I

    iput p4, p0, Landroidx/glance/appwidget/protobuf/V;->d:I

    instance-of p1, p5, Landroidx/glance/appwidget/protobuf/y;

    iput-boolean p1, p0, Landroidx/glance/appwidget/protobuf/V;->f:Z

    iput-boolean p6, p0, Landroidx/glance/appwidget/protobuf/V;->g:Z

    iput-object p7, p0, Landroidx/glance/appwidget/protobuf/V;->h:[I

    iput p8, p0, Landroidx/glance/appwidget/protobuf/V;->i:I

    iput p9, p0, Landroidx/glance/appwidget/protobuf/V;->j:I

    iput-object p10, p0, Landroidx/glance/appwidget/protobuf/V;->k:Landroidx/glance/appwidget/protobuf/X;

    iput-object p11, p0, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    iput-object p12, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    iput-object p5, p0, Landroidx/glance/appwidget/protobuf/V;->e:Landroidx/glance/appwidget/protobuf/a;

    iput-object p14, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    return-void
.end method

.method public static A(Landroidx/glance/appwidget/protobuf/e0;Landroidx/glance/appwidget/protobuf/X;Landroidx/glance/appwidget/protobuf/L;Landroidx/glance/appwidget/protobuf/j0;Landroidx/glance/appwidget/protobuf/o;Landroidx/glance/appwidget/protobuf/Q;)Landroidx/glance/appwidget/protobuf/V;
    .locals 1

    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/e0;

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Landroidx/glance/appwidget/protobuf/V;->B(Landroidx/glance/appwidget/protobuf/e0;Landroidx/glance/appwidget/protobuf/X;Landroidx/glance/appwidget/protobuf/L;Landroidx/glance/appwidget/protobuf/j0;Landroidx/glance/appwidget/protobuf/o;Landroidx/glance/appwidget/protobuf/Q;)Landroidx/glance/appwidget/protobuf/V;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static B(Landroidx/glance/appwidget/protobuf/e0;Landroidx/glance/appwidget/protobuf/X;Landroidx/glance/appwidget/protobuf/L;Landroidx/glance/appwidget/protobuf/j0;Landroidx/glance/appwidget/protobuf/o;Landroidx/glance/appwidget/protobuf/Q;)Landroidx/glance/appwidget/protobuf/V;
    .locals 33

    invoke-virtual/range {p0 .. p0}, Landroidx/glance/appwidget/protobuf/e0;->d()Landroidx/glance/appwidget/protobuf/b0;

    move-result-object v0

    sget-object v1, Landroidx/glance/appwidget/protobuf/b0;->PROTO3:Landroidx/glance/appwidget/protobuf/b0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/glance/appwidget/protobuf/e0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Landroidx/glance/appwidget/protobuf/V;->o:[I

    move v8, v2

    move v9, v8

    move v11, v9

    move v12, v11

    move v14, v12

    move/from16 v16, v14

    move-object v13, v6

    move/from16 v6, v16

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v32, v14

    move v14, v12

    move/from16 v12, v32

    :goto_b
    sget-object v15, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Landroidx/glance/appwidget/protobuf/e0;->b()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroidx/glance/appwidget/protobuf/e0;->a()Landroidx/glance/appwidget/protobuf/a;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v7, v11, 0x3

    new-array v7, v7, [I

    const/4 v3, 0x2

    mul-int/2addr v11, v3

    new-array v11, v11, [Ljava/lang/Object;

    add-int/2addr v14, v12

    move/from16 v22, v12

    move/from16 v23, v14

    const/4 v3, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v4, v1, :cond_32

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v27, v1

    const v1, 0xd800

    if-lt v5, v1, :cond_16

    and-int/lit16 v1, v5, 0x1fff

    shl-int v1, v1, v24

    or-int/2addr v4, v1

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v1, v27

    goto :goto_d

    :cond_16
    shl-int v1, v5, v24

    or-int/2addr v4, v1

    move/from16 v1, v26

    goto :goto_e

    :cond_17
    move/from16 v27, v1

    move/from16 v1, v24

    :goto_e
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v24, v5

    const v5, 0xd800

    if-lt v1, v5, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v14

    const v14, 0xd800

    if-lt v5, v14, :cond_18

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v24

    or-int/2addr v1, v5

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v14, v28

    goto :goto_f

    :cond_18
    shl-int v5, v5, v24

    or-int/2addr v1, v5

    move/from16 v5, v26

    goto :goto_10

    :cond_19
    move/from16 v28, v14

    move/from16 v5, v24

    :goto_10
    and-int/lit16 v14, v1, 0xff

    move/from16 v24, v12

    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_1a

    add-int/lit8 v12, v20, 0x1

    aput v3, v13, v20

    move/from16 v20, v12

    :cond_1a
    const/16 v12, 0x33

    if-lt v14, v12, :cond_22

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v12

    const v12, 0xd800

    if-lt v5, v12, :cond_1c

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v12, v26

    const/16 v26, 0xd

    :goto_11
    add-int/lit8 v30, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v31, v9

    const v9, 0xd800

    if-lt v12, v9, :cond_1b

    and-int/lit16 v9, v12, 0x1fff

    shl-int v9, v9, v26

    or-int/2addr v5, v9

    add-int/lit8 v26, v26, 0xd

    move/from16 v12, v30

    move/from16 v9, v31

    goto :goto_11

    :cond_1b
    shl-int v9, v12, v26

    or-int/2addr v5, v9

    move/from16 v12, v30

    goto :goto_12

    :cond_1c
    move/from16 v31, v9

    move/from16 v12, v26

    :goto_12
    add-int/lit8 v9, v14, -0x33

    move/from16 v26, v12

    const/16 v12, 0x9

    if-eq v9, v12, :cond_1d

    const/16 v12, 0x11

    if-ne v9, v12, :cond_1e

    :cond_1d
    move/from16 v30, v8

    const/4 v8, 0x2

    const/4 v12, 0x1

    goto :goto_13

    :cond_1e
    const/16 v12, 0xc

    if-ne v9, v12, :cond_1f

    if-nez v10, :cond_1f

    const/4 v9, 0x3

    move/from16 v30, v8

    const/4 v8, 0x2

    const/4 v12, 0x1

    invoke-static {v3, v9, v8, v12}, LV0/c;->x(IIII)I

    move-result v9

    add-int/lit8 v19, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v9

    move/from16 v16, v19

    goto :goto_14

    :cond_1f
    move/from16 v30, v8

    const/4 v8, 0x2

    const/4 v12, 0x1

    goto :goto_14

    :goto_13
    const/4 v9, 0x3

    invoke-static {v3, v9, v8, v12}, LV0/c;->x(IIII)I

    move-result v9

    add-int/lit8 v12, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v9

    move/from16 v16, v12

    :goto_14
    mul-int/2addr v5, v8

    aget-object v8, v17, v5

    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_20

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Landroidx/glance/appwidget/protobuf/V;->K(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v17, v5

    :goto_15
    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v5, v5, 0x1

    aget-object v9, v17, v5

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_21

    check-cast v9, Ljava/lang/reflect/Field;

    :goto_16
    move v5, v8

    goto :goto_17

    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Landroidx/glance/appwidget/protobuf/V;->K(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v17, v5

    goto :goto_16

    :goto_17
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    move/from16 v19, v4

    move v9, v8

    move/from16 v29, v10

    move-object v10, v11

    move/from16 v11, v16

    move/from16 v4, v26

    move v8, v5

    const/4 v5, 0x0

    goto/16 :goto_24

    :cond_22
    move/from16 v30, v8

    move/from16 v31, v9

    add-int/lit8 v8, v16, 0x1

    aget-object v9, v17, v16

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Landroidx/glance/appwidget/protobuf/V;->K(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v12, 0x9

    if-eq v14, v12, :cond_23

    const/16 v12, 0x11

    if-ne v14, v12, :cond_24

    :cond_23
    move/from16 v19, v4

    move/from16 v29, v10

    const/4 v4, 0x2

    const/4 v10, 0x1

    goto/16 :goto_1c

    :cond_24
    const/16 v12, 0x1b

    if-eq v14, v12, :cond_25

    const/16 v12, 0x31

    if-ne v14, v12, :cond_26

    :cond_25
    move/from16 v19, v4

    move/from16 v29, v10

    const/4 v4, 0x2

    const/4 v10, 0x1

    goto :goto_1b

    :cond_26
    const/16 v12, 0xc

    if-eq v14, v12, :cond_2a

    const/16 v12, 0x1e

    if-eq v14, v12, :cond_2a

    const/16 v12, 0x2c

    if-ne v14, v12, :cond_27

    goto :goto_19

    :cond_27
    const/16 v12, 0x32

    if-ne v14, v12, :cond_29

    add-int/lit8 v12, v22, 0x1

    aput v3, v13, v22

    div-int/lit8 v22, v3, 0x3

    const/16 v21, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v29, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v22

    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v16, 0x3

    aget-object v16, v17, v29

    aput-object v16, v11, v22

    move/from16 v19, v4

    move/from16 v29, v10

    move/from16 v22, v12

    :goto_18
    move-object v12, v11

    goto :goto_1d

    :cond_28
    move/from16 v19, v4

    move/from16 v22, v12

    move/from16 v8, v29

    move/from16 v29, v10

    goto :goto_18

    :cond_29
    move/from16 v19, v4

    move/from16 v29, v10

    const/4 v10, 0x1

    goto :goto_18

    :cond_2a
    :goto_19
    if-nez v10, :cond_29

    const/4 v12, 0x3

    move/from16 v19, v4

    move/from16 v29, v10

    const/4 v4, 0x2

    const/4 v10, 0x1

    invoke-static {v3, v12, v4, v10}, LV0/c;->x(IIII)I

    move-result v12

    add-int/lit8 v16, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    :goto_1a
    move-object v12, v11

    move/from16 v8, v16

    goto :goto_1d

    :goto_1b
    const/4 v12, 0x3

    invoke-static {v3, v12, v4, v10}, LV0/c;->x(IIII)I

    move-result v12

    add-int/lit8 v16, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    goto :goto_1a

    :goto_1c
    const/4 v12, 0x3

    invoke-static {v3, v12, v4, v10}, LV0/c;->x(IIII)I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v11, v12

    goto :goto_18

    :goto_1d
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    long-to-int v9, v10

    and-int/lit16 v10, v1, 0x1000

    const/16 v11, 0x1000

    if-ne v10, v11, :cond_2e

    const/16 v10, 0x11

    if-gt v14, v10, :cond_2e

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v11, 0xd800

    if-lt v5, v11, :cond_2c

    and-int/lit16 v5, v5, 0x1fff

    const/16 v16, 0xd

    :goto_1e
    add-int/lit8 v25, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v11, :cond_2b

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v16

    or-int/2addr v5, v10

    add-int/lit8 v16, v16, 0xd

    move/from16 v10, v25

    goto :goto_1e

    :cond_2b
    shl-int v10, v10, v16

    or-int/2addr v5, v10

    :goto_1f
    const/4 v10, 0x2

    goto :goto_20

    :cond_2c
    move/from16 v25, v10

    goto :goto_1f

    :goto_20
    mul-int/lit8 v16, v6, 0x2

    div-int/lit8 v21, v5, 0x20

    add-int v21, v21, v16

    aget-object v4, v17, v21

    instance-of v10, v4, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_2d

    check-cast v4, Ljava/lang/reflect/Field;

    :goto_21
    move-object v10, v12

    goto :goto_22

    :cond_2d
    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Landroidx/glance/appwidget/protobuf/V;->K(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v17, v21

    goto :goto_21

    :goto_22
    invoke-virtual {v15, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v4, v11

    rem-int/lit8 v5, v5, 0x20

    goto :goto_23

    :cond_2e
    move-object v10, v12

    const v4, 0xfffff

    move/from16 v25, v5

    const/4 v5, 0x0

    :goto_23
    const/16 v11, 0x12

    if-lt v14, v11, :cond_2f

    const/16 v11, 0x31

    if-gt v14, v11, :cond_2f

    add-int/lit8 v11, v23, 0x1

    aput v9, v13, v23

    move/from16 v23, v11

    :cond_2f
    move v11, v8

    move v8, v9

    move v9, v4

    move/from16 v4, v25

    :goto_24
    add-int/lit8 v12, v3, 0x1

    aput v19, v7, v3

    add-int/lit8 v19, v3, 0x2

    move-object/from16 v25, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_30

    const/high16 v0, 0x20000000

    goto :goto_25

    :cond_30
    const/4 v0, 0x0

    :goto_25
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_31

    const/high16 v1, 0x10000000

    goto :goto_26

    :cond_31
    const/4 v1, 0x0

    :goto_26
    or-int/2addr v0, v1

    shl-int/lit8 v1, v14, 0x14

    or-int/2addr v0, v1

    or-int/2addr v0, v8

    aput v0, v7, v12

    add-int/lit8 v3, v3, 0x3

    shl-int/lit8 v0, v5, 0x14

    or-int/2addr v0, v9

    aput v0, v7, v19

    move/from16 v16, v11

    move/from16 v12, v24

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v14, v28

    move/from16 v8, v30

    move/from16 v9, v31

    const v5, 0xd800

    move-object v11, v10

    move/from16 v10, v29

    goto/16 :goto_c

    :cond_32
    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v29, v10

    move-object v10, v11

    move/from16 v24, v12

    move/from16 v28, v14

    new-instance v0, Landroidx/glance/appwidget/protobuf/V;

    invoke-virtual/range {p0 .. p0}, Landroidx/glance/appwidget/protobuf/e0;->a()Landroidx/glance/appwidget/protobuf/a;

    move-result-object v9

    move-object v4, v0

    move-object v5, v7

    move-object v6, v10

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v10, v29

    move-object v11, v13

    move/from16 v13, v28

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v4 .. v18}, Landroidx/glance/appwidget/protobuf/V;-><init>([I[Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/a;Z[IIILandroidx/glance/appwidget/protobuf/X;Landroidx/glance/appwidget/protobuf/L;Landroidx/glance/appwidget/protobuf/j0;Landroidx/glance/appwidget/protobuf/o;Landroidx/glance/appwidget/protobuf/Q;)V

    return-object v0
.end method

.method public static C(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static D(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static E(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static K(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static P(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Landroidx/glance/appwidget/protobuf/O;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/glance/appwidget/protobuf/k;

    invoke-virtual {p2, p0, p1}, Landroidx/glance/appwidget/protobuf/k;->R(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p2, p0, p1}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    :goto_0
    return-void
.end method

.method public static r(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/y;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/y;->h()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v0, p1, p2, p0}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final F(I)I
    .locals 6

    iget v0, p0, Landroidx/glance/appwidget/protobuf/V;->c:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/glance/appwidget/protobuf/V;->d:I

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_2

    add-int v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, p0, v4

    if-ne p1, v5, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final G(Ljava/lang/Object;JLN/h;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    invoke-virtual {p0, p2, p3, p1}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p4, LN/h;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    :cond_0
    invoke-interface {p5}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p2

    invoke-virtual {p4, p2, p5, p6}, LN/h;->f(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-interface {p5, p2}, Landroidx/glance/appwidget/protobuf/f0;->b(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, LN/h;->e:Ljava/lang/Object;

    check-cast p2, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {p2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p4, LN/h;->d:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p4, LN/h;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0
.end method

.method public final H(Ljava/lang/Object;ILN/h;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p3, LN/h;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-interface {p4}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p2

    invoke-virtual {p3, p2, p4, p5}, LN/h;->g(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-interface {p4, p2}, Landroidx/glance/appwidget/protobuf/f0;->b(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p3, LN/h;->e:Ljava/lang/Object;

    check-cast p2, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {p2}, Landroidx/glance/appwidget/protobuf/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p3, LN/h;->d:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/glance/appwidget/protobuf/j;->u()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p3, LN/h;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0
.end method

.method public final I(Ljava/lang/Object;ILN/h;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const v2, 0xfffff

    if-eqz v0, :cond_1

    and-int p0, p2, v2

    int-to-long v2, p0

    invoke-virtual {p3, v1}, LN/h;->d0(I)V

    iget-object p0, p3, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/j;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p1, p0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Landroidx/glance/appwidget/protobuf/V;->f:Z

    if-eqz p0, :cond_2

    and-int p0, p2, v2

    int-to-long v2, p0

    invoke-virtual {p3, v1}, LN/h;->d0(I)V

    iget-object p0, p3, LN/h;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/appwidget/protobuf/j;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/j;->s()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p1, p0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    and-int p0, p2, v2

    int-to-long v0, p0

    invoke-virtual {p3}, LN/h;->k()Landroidx/glance/appwidget/protobuf/g;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final J(Ljava/lang/Object;ILN/h;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0xfffff

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    if-eqz v0, :cond_1

    and-int/2addr p2, v3

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, v2}, LN/h;->U(Ljava/util/List;Z)V

    goto :goto_1

    :cond_1
    and-int/2addr p2, v3

    int-to-long v2, p2

    invoke-virtual {p0, v2, v3, p1}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, v1}, LN/h;->U(Ljava/util/List;Z)V

    :goto_1
    return-void
.end method

.method public final L(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    sget-object p1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {v0, v1, p0, p2}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    return-void
.end method

.method public final M(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p3}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    return-void
.end method

.method public final N(Ljava/lang/Object;ILandroidx/glance/appwidget/protobuf/a;)V
    .locals 3

    sget-object v0, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    return-void
.end method

.method public final O(Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/a;)V
    .locals 3

    sget-object v0, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    return-void
.end method

.method public final Q(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final R(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v4, v3

    sget-object v5, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    const v6, 0xfffff

    move v9, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v4, :cond_5

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v11

    aget v12, v3, v8

    invoke-static {v11}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v13

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
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->h(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->o(IJ)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->n(II)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->m(IJ)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->l(II)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->d(II)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->p(II)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->k(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Landroidx/glance/appwidget/protobuf/V;->S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->a(IZ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->e(II)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->f(IJ)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->i(II)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->q(IJ)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v6, v7, v1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->j(IJ)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v6, v12}, Landroidx/glance/appwidget/protobuf/O;->g(FI)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {v0, v12, v8, v1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v12}, Landroidx/glance/appwidget/protobuf/O;->c(DI)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Landroidx/glance/appwidget/protobuf/g0;->K(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_2

    :pswitch_14
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->R(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_15
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->Q(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_16
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->P(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_17
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->O(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_18
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->G(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_19
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->T(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_1a
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->D(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_1b
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->H(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_1c
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->I(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_1d
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->L(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_1e
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->U(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_1f
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->M(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_20
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->J(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_21
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v15}, Landroidx/glance/appwidget/protobuf/g0;->F(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_2

    :pswitch_22
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v11, v6, v2, v12}, Landroidx/glance/appwidget/protobuf/g0;->R(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    :goto_3
    move v13, v12

    goto/16 :goto_4

    :pswitch_23
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Landroidx/glance/appwidget/protobuf/g0;->Q(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto :goto_3

    :pswitch_24
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Landroidx/glance/appwidget/protobuf/g0;->P(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto :goto_3

    :pswitch_25
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Landroidx/glance/appwidget/protobuf/g0;->O(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto :goto_3

    :pswitch_26
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Landroidx/glance/appwidget/protobuf/g0;->G(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto :goto_3

    :pswitch_27
    const/4 v12, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v12}, Landroidx/glance/appwidget/protobuf/g0;->T(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto :goto_3

    :pswitch_28
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Landroidx/glance/appwidget/protobuf/g0;->E(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_2

    :pswitch_29
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v7

    invoke-static {v11, v6, v2, v7}, Landroidx/glance/appwidget/protobuf/g0;->N(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_2

    :pswitch_2a
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2}, Landroidx/glance/appwidget/protobuf/g0;->S(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_2

    :pswitch_2b
    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->D(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->H(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->I(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->L(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->U(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->M(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->J(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    aget v11, v3, v8

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v11, v6, v2, v13}, Landroidx/glance/appwidget/protobuf/g0;->F(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->h(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->o(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->n(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->m(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->l(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->d(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->p(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->k(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Landroidx/glance/appwidget/protobuf/V;->S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->e(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->f(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Landroidx/glance/appwidget/protobuf/O;->i(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->q(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    invoke-virtual {v5, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Landroidx/glance/appwidget/protobuf/O;->j(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-virtual {v2, v6, v12}, Landroidx/glance/appwidget/protobuf/O;->g(FI)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int v11, v10, v16

    if-eqz v11, :cond_4

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v6, v7, v1}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v12}, Landroidx/glance/appwidget/protobuf/O;->c(DI)V

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x3

    const v6, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {v0, v2}, Landroidx/glance/appwidget/protobuf/i0;->d(Landroidx/glance/appwidget/protobuf/O;)V

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

.method public final a()Landroidx/glance/appwidget/protobuf/y;
    .locals 1

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/V;->k:Landroidx/glance/appwidget/protobuf/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->e:Landroidx/glance/appwidget/protobuf/a;

    check-cast p0, Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/y;->j()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroidx/glance/appwidget/protobuf/y;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->c()V

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->b()V

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/y;->i()V

    :cond_1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/Q;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    invoke-virtual {v3, v4, v5, p1}, Landroidx/glance/appwidget/protobuf/L;->a(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    aget v3, v0, v2

    invoke-virtual {p0, v3, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v3

    sget-object v6, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/glance/appwidget/protobuf/f0;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v3

    sget-object v6, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/glance/appwidget/protobuf/f0;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/j0;->b(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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

.method public final c(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Landroidx/glance/appwidget/protobuf/V;->i:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Landroidx/glance/appwidget/protobuf/V;->h:[I

    aget v5, v5, v2

    iget-object v7, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

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

    invoke-virtual {p0, v5, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

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
    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

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

    sget-object v8, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v8, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/glance/appwidget/protobuf/P;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v5}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v8, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/glance/appwidget/protobuf/f0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_8
    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v8, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v5

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Landroidx/glance/appwidget/protobuf/f0;->c(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    return v1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-ne v3, v0, :cond_c

    invoke-virtual {p0, v5, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_c
    and-int/2addr v7, v4

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    move v6, v1

    :goto_3
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v8, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/glance/appwidget/protobuf/f0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    return v1

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v6
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v5, v3

    aget v1, v1, v0

    invoke-static {v2}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v2, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p1, v2}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v2, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p1, v2}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Landroidx/glance/appwidget/protobuf/g0;->a:Ljava/lang/Class;

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/glance/appwidget/protobuf/Q;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/P;

    move-result-object v1

    invoke-static {v5, v6, p1, v1}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    invoke-virtual {v1, v5, v6, p1, p2}, Landroidx/glance/appwidget/protobuf/L;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->w(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v6, p1, v1}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->w(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v6, p1, v1}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v5, v6, v2}, Landroidx/glance/appwidget/protobuf/q0;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, v2, v5, v6, p1}, Landroidx/glance/appwidget/protobuf/q0;->n(FJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/glance/appwidget/protobuf/q0;->m(JLjava/lang/Object;D)V

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-static {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/g0;->B(Landroidx/glance/appwidget/protobuf/j0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mutating immutable message: "

    invoke-static {p1, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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

.method public final e(Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/glance/appwidget/protobuf/V;->u(Landroidx/glance/appwidget/protobuf/j0;Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mutating immutable message: "

    invoke-static {p1, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Landroidx/glance/appwidget/protobuf/y;)I
    .locals 11

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Landroidx/glance/appwidget/protobuf/D;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

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

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Landroidx/glance/appwidget/protobuf/D;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/i0;->hashCode()I

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

.method public final g(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v5, v6, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/glance/appwidget/protobuf/g0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/glance/appwidget/protobuf/V;->j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

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
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    check-cast p2, Landroidx/glance/appwidget/protobuf/y;

    iget-object p1, p2, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/i0;->equals(Ljava/lang/Object;)Z

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

.method public final h(Landroidx/glance/appwidget/protobuf/y;)I
    .locals 1

    iget-boolean v0, p0, Landroidx/glance/appwidget/protobuf/V;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->p(Landroidx/glance/appwidget/protobuf/y;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->o(Landroidx/glance/appwidget/protobuf/y;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final i(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V
    .locals 13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/glance/appwidget/protobuf/v0;->ASCENDING:Landroidx/glance/appwidget/protobuf/v0;

    sget-object v1, Landroidx/glance/appwidget/protobuf/v0;->DESCENDING:Landroidx/glance/appwidget/protobuf/v0;

    iget-object v2, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    const v5, 0xfffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    if-ne v0, v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {v0, p2}, Landroidx/glance/appwidget/protobuf/i0;->d(Landroidx/glance/appwidget/protobuf/O;)V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    :goto_0
    if-ltz v0, :cond_7

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v1

    aget v8, v2, v0

    invoke-static {v1}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Landroidx/glance/appwidget/protobuf/O;->h(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->o(IJ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->n(II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->m(IJ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->l(II)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->d(II)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->p(II)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Landroidx/glance/appwidget/protobuf/O;->k(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1, p2}, Landroidx/glance/appwidget/protobuf/V;->S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->a(IZ)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->e(II)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->f(IJ)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->i(II)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->q(IJ)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    invoke-static {v9, v10, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->j(IJ)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1, v8}, Landroidx/glance/appwidget/protobuf/O;->g(FI)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v8, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {p2, v9, v10, v8}, Landroidx/glance/appwidget/protobuf/O;->c(DI)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v1, v5

    int-to-long v8, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v8, v9, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    throw v3

    :pswitch_13
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v9

    invoke-static {v8, v1, p2, v9}, Landroidx/glance/appwidget/protobuf/g0;->K(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_14
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->R(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_15
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->Q(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_16
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->P(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_17
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->O(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_18
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->G(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_19
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->T(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1a
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->D(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1b
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->H(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1c
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->I(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1d
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->L(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1e
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->U(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1f
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->M(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_20
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->J(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_21
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->F(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_22
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->R(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_23
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->Q(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_24
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->P(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_25
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->O(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_26
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->G(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_27
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->T(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_28
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2}, Landroidx/glance/appwidget/protobuf/g0;->E(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_29
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v9

    invoke-static {v8, v1, p2, v9}, Landroidx/glance/appwidget/protobuf/g0;->N(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_2a
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2}, Landroidx/glance/appwidget/protobuf/g0;->S(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_2b
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->D(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2c
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->H(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2d
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->I(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2e
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->L(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2f
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->U(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_30
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->M(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_31
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->J(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_32
    aget v8, v2, v0

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v8, v1, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->F(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Landroidx/glance/appwidget/protobuf/O;->h(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->o(IJ)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->n(II)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->m(IJ)V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->l(II)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->d(II)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->p(II)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v9

    invoke-virtual {p2, v8, v1, v9}, Landroidx/glance/appwidget/protobuf/O;->k(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1, p2}, Landroidx/glance/appwidget/protobuf/V;->S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->a(IZ)V

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->e(II)V

    goto :goto_1

    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->f(IJ)V

    goto :goto_1

    :pswitch_40
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v8, v1}, Landroidx/glance/appwidget/protobuf/O;->i(II)V

    goto :goto_1

    :pswitch_41
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->q(IJ)V

    goto :goto_1

    :pswitch_42
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->j(IJ)V

    goto :goto_1

    :pswitch_43
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v1

    invoke-virtual {p2, v1, v8}, Landroidx/glance/appwidget/protobuf/O;->g(FI)V

    goto :goto_1

    :pswitch_44
    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    and-int/2addr v1, v5

    int-to-long v9, v1

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v1, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {p2, v9, v10, v8}, Landroidx/glance/appwidget/protobuf/O;->c(DI)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x3

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/glance/appwidget/protobuf/V;->g:Z

    if-eqz v0, :cond_6

    array-length v0, v2

    move v1, v7

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v9

    aget v10, v2, v1

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_45
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Landroidx/glance/appwidget/protobuf/O;->h(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_46
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->o(IJ)V

    goto/16 :goto_3

    :pswitch_47
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->n(II)V

    goto/16 :goto_3

    :pswitch_48
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->m(IJ)V

    goto/16 :goto_3

    :pswitch_49
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->l(II)V

    goto/16 :goto_3

    :pswitch_4a
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->d(II)V

    goto/16 :goto_3

    :pswitch_4b
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->p(II)V

    goto/16 :goto_3

    :pswitch_4c
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    goto/16 :goto_3

    :pswitch_4d
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Landroidx/glance/appwidget/protobuf/O;->k(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_4e
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Landroidx/glance/appwidget/protobuf/V;->S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_4f
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->a(IZ)V

    goto/16 :goto_3

    :pswitch_50
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->e(II)V

    goto/16 :goto_3

    :pswitch_51
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->f(IJ)V

    goto/16 :goto_3

    :pswitch_52
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->i(II)V

    goto/16 :goto_3

    :pswitch_53
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->q(IJ)V

    goto/16 :goto_3

    :pswitch_54
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->j(IJ)V

    goto/16 :goto_3

    :pswitch_55
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p2, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->g(FI)V

    goto/16 :goto_3

    :pswitch_56
    invoke-virtual {p0, v10, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {p2, v11, v12, v10}, Landroidx/glance/appwidget/protobuf/O;->c(DI)V

    goto/16 :goto_3

    :pswitch_57
    and-int/2addr v9, v5

    int-to-long v9, v9

    sget-object v11, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v11, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LV0/c;->u(Ljava/lang/Object;)V

    throw v3

    :pswitch_58
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Landroidx/glance/appwidget/protobuf/g0;->K(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_59
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->R(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5a
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->Q(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5b
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->P(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5c
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->O(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5d
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->G(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5e
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->T(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5f
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->D(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_60
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->H(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_61
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->I(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_62
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->L(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_63
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->U(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_64
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->M(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_65
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->J(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_66
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v6}, Landroidx/glance/appwidget/protobuf/g0;->F(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_67
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->R(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_68
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->Q(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_69
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->P(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6a
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->O(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6b
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->G(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6c
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->T(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6d
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Landroidx/glance/appwidget/protobuf/g0;->E(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_6e
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Landroidx/glance/appwidget/protobuf/g0;->N(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_6f
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Landroidx/glance/appwidget/protobuf/g0;->S(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_70
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->D(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_71
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->H(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_72
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->I(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_73
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->L(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_74
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->U(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_75
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->M(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_76
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->J(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_77
    aget v10, v2, v1

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v7}, Landroidx/glance/appwidget/protobuf/g0;->F(ILjava/util/List;Landroidx/glance/appwidget/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_78
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Landroidx/glance/appwidget/protobuf/O;->h(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_79
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->o(IJ)V

    goto/16 :goto_3

    :pswitch_7a
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->n(II)V

    goto/16 :goto_3

    :pswitch_7b
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->m(IJ)V

    goto/16 :goto_3

    :pswitch_7c
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->l(II)V

    goto/16 :goto_3

    :pswitch_7d
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->d(II)V

    goto/16 :goto_3

    :pswitch_7e
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->p(II)V

    goto/16 :goto_3

    :pswitch_7f
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->b(ILandroidx/glance/appwidget/protobuf/g;)V

    goto/16 :goto_3

    :pswitch_80
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Landroidx/glance/appwidget/protobuf/O;->k(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)V

    goto/16 :goto_3

    :pswitch_81
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Landroidx/glance/appwidget/protobuf/V;->S(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_82
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->a(IZ)V

    goto/16 :goto_3

    :pswitch_83
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->e(II)V

    goto :goto_3

    :pswitch_84
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->f(IJ)V

    goto :goto_3

    :pswitch_85
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Landroidx/glance/appwidget/protobuf/O;->i(II)V

    goto :goto_3

    :pswitch_86
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->q(IJ)V

    goto :goto_3

    :pswitch_87
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Landroidx/glance/appwidget/protobuf/O;->j(IJ)V

    goto :goto_3

    :pswitch_88
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result v9

    invoke-virtual {p2, v9, v10}, Landroidx/glance/appwidget/protobuf/O;->g(FI)V

    goto :goto_3

    :pswitch_89
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/2addr v9, v5

    int-to-long v11, v9

    sget-object v9, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v9, v11, v12, p1}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide v11

    invoke-virtual {p2, v11, v12, v10}, Landroidx/glance/appwidget/protobuf/O;->c(DI)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/glance/appwidget/protobuf/y;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/i0;->d(Landroidx/glance/appwidget/protobuf/O;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->R(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V

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

.method public final j(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p3, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget p3, p3, p1

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p3, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->l(I)V

    return-void
.end method

.method public final l(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, LV0/c;->x(IIII)I

    move-result p1

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final n(I)Landroidx/glance/appwidget/protobuf/f0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Landroidx/glance/appwidget/protobuf/f0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/glance/appwidget/protobuf/c0;->c:Landroidx/glance/appwidget/protobuf/c0;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/c0;->a(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final o(Landroidx/glance/appwidget/protobuf/y;)I
    .locals 13

    sget-object v0, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const v2, 0xfffff

    move v3, v1

    move v4, v3

    move v6, v4

    move v5, v2

    :goto_0
    iget-object v7, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v8, v7

    if-ge v3, v8, :cond_5

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v8

    aget v9, v7, v3

    invoke-static {v8}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v10

    const/16 v11, 0x11

    if-gt v10, v11, :cond_0

    add-int/lit8 v11, v3, 0x2

    aget v7, v7, v11

    and-int v11, v7, v2

    ushr-int/lit8 v7, v7, 0x14

    const/4 v12, 0x1

    shl-int v7, v12, v7

    if-eq v11, v5, :cond_1

    int-to-long v5, v11

    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v5, v11

    goto :goto_1

    :cond_0
    move v7, v1

    :cond_1
    :goto_1
    and-int/2addr v8, v2

    int-to-long v11, v8

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v8

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->r(ILandroidx/glance/appwidget/protobuf/a;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v7

    :goto_2
    add-int/2addr v4, v7

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->y(IJ)I

    move-result v7

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->x(II)I

    move-result v7

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->w(I)I

    move-result v7

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->v(I)I

    move-result v7

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->n(II)I

    move-result v7

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->C(II)I

    move-result v7

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v7

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v8

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/g0;->o(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v7

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroidx/glance/appwidget/protobuf/g;

    if-eqz v8, :cond_2

    check-cast v7, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v7

    :goto_3
    add-int/2addr v7, v4

    move v4, v7

    goto/16 :goto_4

    :cond_2
    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->z(ILjava/lang/String;)I

    move-result v7

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->j(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->o(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->p(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->s(II)I

    move-result v7

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->E(IJ)I

    move-result v7

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v11, v12, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->u(IJ)I

    move-result v7

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->q(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, v9, v3, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->m(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Landroidx/glance/appwidget/protobuf/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_13
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v8

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/g0;->j(ILjava/util/List;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->t(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->r(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_17
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_18
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_19
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->w(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->l(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->y(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->n(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_20
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_21
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Landroidx/glance/appwidget/protobuf/g0;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v8

    invoke-static {v7, v8, v7, v4}, LV0/c;->C(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_22
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->s(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->q(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->h(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->f(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->d(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->v(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->c(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v8

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/g0;->p(ILjava/util/List;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->u(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->a(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->f(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->h(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->k(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->x(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->m(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->f(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/g0;->h(ILjava/util/List;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_33
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v8

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->r(ILandroidx/glance/appwidget/protobuf/a;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_34
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->y(IJ)I

    move-result v7

    goto/16 :goto_2

    :pswitch_35
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->x(II)I

    move-result v7

    goto/16 :goto_2

    :pswitch_36
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->w(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_37
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->v(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_38
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->n(II)I

    move-result v7

    goto/16 :goto_2

    :pswitch_39
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->C(II)I

    move-result v7

    goto/16 :goto_2

    :pswitch_3a
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_3b
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v3}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v8

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/g0;->o(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v7

    goto/16 :goto_2

    :pswitch_3c
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroidx/glance/appwidget/protobuf/g;

    if-eqz v8, :cond_3

    check-cast v7, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v7

    goto/16 :goto_3

    :cond_3
    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->z(ILjava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    :pswitch_3d
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->j(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_3e
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->o(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_3f
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->p(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_40
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v9, v7}, Landroidx/glance/appwidget/protobuf/k;->s(II)I

    move-result v7

    goto/16 :goto_2

    :pswitch_41
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->E(IJ)I

    move-result v7

    goto/16 :goto_2

    :pswitch_42
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v9, v7, v8}, Landroidx/glance/appwidget/protobuf/k;->u(IJ)I

    move-result v7

    goto/16 :goto_2

    :pswitch_43
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->q(I)I

    move-result v7

    goto/16 :goto_2

    :pswitch_44
    and-int/2addr v7, v6

    if-eqz v7, :cond_4

    invoke-static {v9}, Landroidx/glance/appwidget/protobuf/k;->m(I)I

    move-result v7

    goto/16 :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/i0;->b()I

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

.method public final p(Landroidx/glance/appwidget/protobuf/y;)I
    .locals 9

    sget-object v0, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v4

    invoke-static {v4}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v5

    aget v6, v3, v1

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    sget-object v4, Landroidx/glance/appwidget/protobuf/s;->DOUBLE_LIST_PACKED:Landroidx/glance/appwidget/protobuf/s;

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/s;->a()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Landroidx/glance/appwidget/protobuf/s;->SINT64_LIST_PACKED:Landroidx/glance/appwidget/protobuf/s;

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/s;->a()I

    move-result v4

    if-gt v5, v4, :cond_0

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    :cond_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->r(ILandroidx/glance/appwidget/protobuf/a;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v3

    :goto_1
    add-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->y(IJ)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->x(II)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->w(I)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->v(I)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->n(II)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->C(II)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/g0;->o(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v3

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/glance/appwidget/protobuf/g;

    if-eqz v4, :cond_1

    check-cast v3, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->z(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->j(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->o(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->p(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->s(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->E(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/glance/appwidget/protobuf/V;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->u(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->q(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v6, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->m(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_12
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroidx/glance/appwidget/protobuf/Q;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_13
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/g0;->j(ILjava/util/List;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->r(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->w(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->l(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/g0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->C(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_22
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->s(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->q(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->v(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/g0;->p(ILjava/util/List;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->k(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->x(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->m(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/V;->t(Landroidx/glance/appwidget/protobuf/y;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/g0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->r(ILandroidx/glance/appwidget/protobuf/a;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->k(Landroidx/glance/appwidget/protobuf/y;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->y(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->j(Landroidx/glance/appwidget/protobuf/y;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->x(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->w(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->v(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->j(Landroidx/glance/appwidget/protobuf/y;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->n(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->j(Landroidx/glance/appwidget/protobuf/y;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->C(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/g0;->o(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->l(Landroidx/glance/appwidget/protobuf/y;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/glance/appwidget/protobuf/g;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/glance/appwidget/protobuf/g;

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v3

    goto/16 :goto_1

    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->z(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->j(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->o(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->p(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->j(Landroidx/glance/appwidget/protobuf/y;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/glance/appwidget/protobuf/k;->s(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->k(Landroidx/glance/appwidget/protobuf/y;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->E(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/glance/appwidget/protobuf/r0;->k(Landroidx/glance/appwidget/protobuf/y;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/glance/appwidget/protobuf/k;->u(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->q(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {p0, v1, p1}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/glance/appwidget/protobuf/k;->m(I)I

    move-result v3

    goto/16 :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->m:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/i0;->b()I

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

.method public final q(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :pswitch_1
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :pswitch_2
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    move v5, v6

    :cond_2
    return v5

    :pswitch_3
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v5, v6

    :cond_3
    return v5

    :pswitch_4
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :pswitch_5
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :pswitch_6
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    move v5, v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Landroidx/glance/appwidget/protobuf/g;->c:Landroidx/glance/appwidget/protobuf/g;

    sget-object p1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v5, v6

    :cond_7
    return v5

    :pswitch_9
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_8
    instance-of p1, p0, Landroidx/glance/appwidget/protobuf/g;

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/glance/appwidget/protobuf/g;->c:Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p1, p0}, Landroidx/glance/appwidget/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    move v5, v6

    :cond_a
    return v5

    :pswitch_c
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v5, v6

    :cond_b
    return v5

    :pswitch_d
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    move v5, v6

    :cond_c
    return v5

    :pswitch_e
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v5, v6

    :cond_d
    return v5

    :pswitch_f
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v5, v6

    :cond_e
    return v5

    :pswitch_10
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->f(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_f

    move v5, v6

    :cond_f
    return v5

    :pswitch_11
    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->e(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v5, v6

    :cond_10
    return v5

    :cond_11
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    sget-object p1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p1, v2, v3, p2}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v5, v6

    :cond_12
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

.method public final s(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, v0, v1, p3}, Landroidx/glance/appwidget/protobuf/q0;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u(Landroidx/glance/appwidget/protobuf/j0;Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    iget-object v12, v8, Landroidx/glance/appwidget/protobuf/V;->h:[I

    iget v13, v8, Landroidx/glance/appwidget/protobuf/V;->j:I

    iget v14, v8, Landroidx/glance/appwidget/protobuf/V;->i:I

    const/4 v7, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, LN/h;->b()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/glance/appwidget/protobuf/V;->F(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_8

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    :goto_1
    if-ge v14, v13, :cond_1

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/glance/appwidget/protobuf/V;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v10

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    iput-object v7, v0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_4

    invoke-static/range {p2 .. p2}, Landroidx/glance/appwidget/protobuf/j0;->a(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/i0;

    move-result-object v7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    :goto_2
    invoke-static {v7, v0}, Landroidx/glance/appwidget/protobuf/j0;->c(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_3
    if-ge v14, v13, :cond_6

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/glance/appwidget/protobuf/V;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    move-object v0, v10

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    iput-object v7, v0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    :cond_7
    return-void

    :cond_8
    :try_start_2
    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->P(I)I

    move-result v2
    :try_end_3
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x3

    iget-object v4, v0, LN/h;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/glance/appwidget/protobuf/j;

    iget-object v15, v8, Landroidx/glance/appwidget/protobuf/V;->l:Landroidx/glance/appwidget/protobuf/L;

    packed-switch v2, :pswitch_data_0

    if-nez v7, :cond_9

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Landroidx/glance/appwidget/protobuf/j0;->a(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/i0;

    move-result-object v7

    goto :goto_4

    :catch_0
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0}, Landroidx/glance/appwidget/protobuf/j0;->c(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_4
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_c

    :goto_5
    if-ge v14, v13, :cond_a

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/glance/appwidget/protobuf/V;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_b

    move-object v0, v10

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    iput-object v7, v0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    :cond_b
    return-void

    :pswitch_0
    :try_start_5
    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->z(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v3

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v0, v2, v3, v11}, LN/h;->f(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-virtual {v8, v10, v1, v5, v2}, Landroidx/glance/appwidget/protobuf/V;->O(Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/a;)V

    :cond_c
    :goto_6
    const/16 v16, 0x0

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->r()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto :goto_6

    :pswitch_2
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto :goto_6

    :pswitch_3
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->p()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto :goto_6

    :pswitch_4
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto :goto_6

    :pswitch_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->i()I

    move-result v2

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->l(I)V

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v10, v2}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto :goto_6

    :pswitch_6
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_7
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->k()Landroidx/glance/appwidget/protobuf/g;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_8
    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->z(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, LN/h;->d0(I)V

    invoke-virtual {v0, v2, v3, v11}, LN/h;->g(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-virtual {v8, v10, v1, v5, v2}, Landroidx/glance/appwidget/protobuf/V;->O(Ljava/lang/Object;IILandroidx/glance/appwidget/protobuf/a;)V

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {v8, v10, v3, v0}, Landroidx/glance/appwidget/protobuf/V;->I(Ljava/lang/Object;ILN/h;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_a
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_b
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_c
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->k()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_d
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_e
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->w()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_f
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->n()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_10
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->l()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_11
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->h()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_12
    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->m(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v5, v10, v1}, Landroidx/glance/appwidget/protobuf/V;->v(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v16, 0x0

    :try_start_6
    throw v16
    :try_end_6
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :pswitch_13
    const/16 v16, 0x0

    :try_start_7
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v3

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v6
    :try_end_7
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object v15, v7

    move-object/from16 v7, p4

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Landroidx/glance/appwidget/protobuf/V;->G(Ljava/lang/Object;JLN/h;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V
    :try_end_8
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v15

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v15

    goto/16 :goto_9

    :catch_1
    move-object v7, v15

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v15, v7

    goto/16 :goto_9

    :catch_2
    move-object v15, v7

    goto/16 :goto_7

    :pswitch_14
    const/16 v16, 0x0

    :try_start_9
    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->R(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->P(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->N(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->L(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, LN/h;->q(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->l(I)V

    invoke-static {v10, v1, v2, v7, v9}, Landroidx/glance/appwidget/protobuf/g0;->z(Ljava/lang/Object;ILjava/util/List;Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/j0;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_19
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->Y(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->i(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->t(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->v(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->D(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->a0(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->F(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->x(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->R(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->P(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->N(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->L(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, LN/h;->q(Ljava/util/List;)V

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->l(I)V

    invoke-static {v10, v1, v2, v7, v9}, Landroidx/glance/appwidget/protobuf/g0;->z(Ljava/lang/Object;ILjava/util/List;Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/j0;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_27
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->Y(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->m(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    const/16 v16, 0x0

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/glance/appwidget/protobuf/V;->H(Ljava/lang/Object;ILN/h;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    goto/16 :goto_0

    :pswitch_2a
    const/16 v16, 0x0

    invoke-virtual {v8, v10, v3, v0}, Landroidx/glance/appwidget/protobuf/V;->J(Ljava/lang/Object;ILN/h;)V

    goto/16 :goto_0

    :pswitch_2b
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->i(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->t(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->v(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->D(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->a0(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->F(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->x(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->o(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    const/16 v16, 0x0

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->y(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v2

    invoke-virtual {v0, v6}, LN/h;->d0(I)V

    invoke-virtual {v0, v1, v2, v11}, LN/h;->f(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-virtual {v8, v10, v5, v1}, Landroidx/glance/appwidget/protobuf/V;->N(Ljava/lang/Object;ILandroidx/glance/appwidget/protobuf/a;)V

    goto/16 :goto_0

    :pswitch_34
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->r()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_35
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->q()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_36
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->p()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_37
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->o()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_38
    const/4 v1, 0x0

    const/16 v16, 0x0

    invoke-virtual {v0, v1}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->i()I

    move-result v1

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->l(I)V

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    invoke-static {v2, v3, v1, v10}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_39
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->v()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3a
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->k()Landroidx/glance/appwidget/protobuf/g;

    move-result-object v3

    invoke-static {v1, v2, v10, v3}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3b
    const/16 v16, 0x0

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->y(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/glance/appwidget/protobuf/a;

    invoke-virtual {v8, v5}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v0, v1, v2, v11}, LN/h;->g(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/f0;Landroidx/glance/appwidget/protobuf/n;)V

    invoke-virtual {v8, v10, v5, v1}, Landroidx/glance/appwidget/protobuf/V;->N(Ljava/lang/Object;ILandroidx/glance/appwidget/protobuf/a;)V

    goto/16 :goto_0

    :pswitch_3c
    const/16 v16, 0x0

    invoke-virtual {v8, v10, v3, v0}, Landroidx/glance/appwidget/protobuf/V;->I(Ljava/lang/Object;ILN/h;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3d
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->f()Z

    move-result v3

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v10, v1, v2, v3}, Landroidx/glance/appwidget/protobuf/q0;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3e
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->j()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3f
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->k()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_40
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->m()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/glance/appwidget/protobuf/r0;->q(JILjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_41
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->w()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_42
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->n()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/glance/appwidget/protobuf/r0;->r(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_43
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->l()F

    move-result v3

    sget-object v4, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v4, v3, v1, v2, v10}, Landroidx/glance/appwidget/protobuf/q0;->n(FJLjava/lang/Object;)V

    invoke-virtual {v8, v5, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_44
    const/16 v16, 0x0

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->C(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LN/h;->d0(I)V

    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/j;->h()D

    move-result-wide v17

    sget-object v1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    move-object/from16 v4, p2

    move v15, v5

    move-wide/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Landroidx/glance/appwidget/protobuf/q0;->m(JLjava/lang/Object;D)V

    invoke-virtual {v8, v15, v10}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V
    :try_end_9
    .catch Landroidx/glance/appwidget/protobuf/E; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :catch_3
    :goto_7
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_d

    invoke-static/range {p2 .. p2}, Landroidx/glance/appwidget/protobuf/j0;->a(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/i0;

    move-result-object v1

    move-object v7, v1

    :cond_d
    invoke-static {v7, v0}, Landroidx/glance/appwidget/protobuf/j0;->c(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v1, :cond_0

    :goto_8
    if-ge v14, v13, :cond_e

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v7}, Landroidx/glance/appwidget/protobuf/V;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_e
    if-eqz v7, :cond_f

    move-object v0, v10

    check-cast v0, Landroidx/glance/appwidget/protobuf/y;

    iput-object v7, v0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    :cond_f
    return-void

    :goto_9
    if-ge v14, v13, :cond_10

    aget v1, v12, v14

    invoke-virtual {v8, v1, v10, v7}, Landroidx/glance/appwidget/protobuf/V;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v10

    check-cast v1, Landroidx/glance/appwidget/protobuf/y;

    iput-object v7, v1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    :cond_11
    throw v0

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

.method public final v(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result p1

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    sget-object p1, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->n:Landroidx/glance/appwidget/protobuf/Q;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Landroidx/glance/appwidget/protobuf/P;

    iget-boolean v2, v2, Landroidx/glance/appwidget/protobuf/P;->a:Z

    if-nez v2, :cond_1

    sget-object v2, Landroidx/glance/appwidget/protobuf/P;->b:Landroidx/glance/appwidget/protobuf/P;

    invoke-virtual {v2}, Landroidx/glance/appwidget/protobuf/P;->c()Landroidx/glance/appwidget/protobuf/P;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/glance/appwidget/protobuf/Q;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/P;

    invoke-static {v0, v1, p2, v2}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/glance/appwidget/protobuf/P;->b:Landroidx/glance/appwidget/protobuf/P;

    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/P;->c()Landroidx/glance/appwidget/protobuf/P;

    move-result-object p1

    invoke-static {v0, v1, p2, p1}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/glance/appwidget/protobuf/P;

    invoke-static {p3}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->L(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final x(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/V;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->M(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/V;->q(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final z(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/V;->n(I)Landroidx/glance/appwidget/protobuf/f0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/glance/appwidget/protobuf/V;->s(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Landroidx/glance/appwidget/protobuf/V;->p:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/V;->Q(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/V;->r(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Landroidx/glance/appwidget/protobuf/f0;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Landroidx/glance/appwidget/protobuf/f0;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method
