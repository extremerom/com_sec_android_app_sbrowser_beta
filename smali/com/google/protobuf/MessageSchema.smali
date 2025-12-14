.class final Lcom/google/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/MessageLite;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/protobuf/NewInstanceSchema;

.field public final l:Lcom/google/protobuf/ListFieldSchema;

.field public final m:Lcom/google/protobuf/UnknownFieldSchema;

.field public final n:Lcom/google/protobuf/ExtensionSchema;

.field public final o:Lcom/google/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/MessageSchema;->p:[I

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    iput-object p2, p0, Lcom/google/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/MessageSchema;->c:I

    iput p4, p0, Lcom/google/protobuf/MessageSchema;->d:I

    instance-of p1, p5, Lcom/google/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/google/protobuf/MessageSchema;->g:Z

    if-eqz p12, :cond_0

    invoke-virtual {p12, p5}, Lcom/google/protobuf/ExtensionSchema;->e(Lcom/google/protobuf/MessageLite;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/MessageSchema;->f:Z

    iput-object p6, p0, Lcom/google/protobuf/MessageSchema;->h:[I

    iput p7, p0, Lcom/google/protobuf/MessageSchema;->i:I

    iput p8, p0, Lcom/google/protobuf/MessageSchema;->j:I

    iput-object p9, p0, Lcom/google/protobuf/MessageSchema;->k:Lcom/google/protobuf/NewInstanceSchema;

    iput-object p10, p0, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    iput-object p11, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    iput-object p12, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    iput-object p5, p0, Lcom/google/protobuf/MessageSchema;->e:Lcom/google/protobuf/MessageLite;

    iput-object p13, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    return-void
.end method

.method public static C(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v5, 0xd800

    if-lt v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_1

    move v3, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_3

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_1
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    and-int/lit16 v3, v3, 0x1fff

    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    add-int/lit8 v8, v8, 0xd

    move v3, v9

    goto :goto_1

    :cond_2
    shl-int/2addr v3, v8

    or-int/2addr v6, v3

    move v3, v9

    :cond_3
    if-nez v6, :cond_4

    sget-object v6, Lcom/google/protobuf/MessageSchema;->p:[I

    move v8, v2

    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    move v15, v13

    move-object v14, v6

    move v6, v15

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_6

    and-int/lit16 v3, v3, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_5

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_2

    :cond_5
    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    move v6, v9

    :cond_6
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_8

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v10

    goto :goto_3

    :cond_7
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v10

    :cond_8
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_a

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_4

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v11

    :cond_a
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_5

    :cond_b
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_c
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_d

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_d
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_e
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_10

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_f
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_10
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_12

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_11
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_12
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_14

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_13
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_14
    add-int v15, v13, v11

    add-int/2addr v15, v12

    new-array v12, v15, [I

    mul-int/lit8 v15, v3, 0x2

    add-int/2addr v15, v6

    move v6, v3

    move v3, v14

    move-object v14, v12

    move v12, v8

    move v8, v15

    move v15, v13

    move v13, v9

    :goto_a
    sget-object v9, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->d()[Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->b()Lcom/google/protobuf/MessageLite;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v7, v10, 0x3

    new-array v7, v7, [I

    const/4 v4, 0x2

    mul-int/2addr v10, v4

    new-array v10, v10, [Ljava/lang/Object;

    add-int v20, v15, v11

    move/from16 v22, v15

    move/from16 v23, v20

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v3, v1, :cond_35

    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_16

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v27, v1

    const v1, 0xd800

    if-lt v5, v1, :cond_15

    and-int/lit16 v1, v5, 0x1fff

    shl-int v1, v1, v24

    or-int/2addr v3, v1

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v1, v27

    goto :goto_c

    :cond_15
    shl-int v1, v5, v24

    or-int/2addr v3, v1

    move/from16 v1, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v1

    move/from16 v1, v24

    :goto_d
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v24, v5

    const v5, 0xd800

    if-lt v1, v5, :cond_18

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v5, v15, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    shl-int v5, v5, v24

    or-int/2addr v1, v5

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v15, v28

    goto :goto_e

    :cond_17
    shl-int v5, v5, v24

    or-int/2addr v1, v5

    move/from16 v5, v26

    goto :goto_f

    :cond_18
    move/from16 v28, v15

    move/from16 v5, v24

    :goto_f
    and-int/lit16 v15, v1, 0xff

    move/from16 v24, v13

    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_19

    add-int/lit8 v13, v11, 0x1

    aput v4, v14, v11

    move v11, v13

    :cond_19
    const/16 v13, 0x33

    if-lt v15, v13, :cond_22

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v11

    const v11, 0xd800

    if-lt v5, v11, :cond_1b

    and-int/lit16 v5, v5, 0x1fff

    const/16 v31, 0xd

    :goto_10
    add-int/lit8 v32, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_1a

    and-int/lit16 v11, v13, 0x1fff

    shl-int v11, v11, v31

    or-int/2addr v5, v11

    add-int/lit8 v31, v31, 0xd

    move/from16 v13, v32

    const v11, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v11, v13, v31

    or-int/2addr v5, v11

    move/from16 v13, v32

    :cond_1b
    add-int/lit8 v11, v15, -0x33

    move/from16 v31, v13

    const/16 v13, 0x9

    if-eq v11, v13, :cond_1c

    const/16 v13, 0x11

    if-ne v11, v13, :cond_1d

    :cond_1c
    move/from16 v32, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_12

    :cond_1d
    const/16 v13, 0xc

    if-ne v11, v13, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->c()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v11

    sget-object v13, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    and-int/lit16 v11, v1, 0x800

    if-eqz v11, :cond_1e

    goto :goto_11

    :cond_1e
    move/from16 v32, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_13

    :cond_1f
    :goto_11
    const/4 v11, 0x3

    move/from16 v32, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-static {v4, v11, v12, v13}, LV0/c;->x(IIII)I

    move-result v11

    add-int/lit8 v19, v8, 0x1

    aget-object v8, v16, v8

    aput-object v8, v10, v11

    move/from16 v8, v19

    goto :goto_13

    :goto_12
    const/4 v11, 0x3

    invoke-static {v4, v11, v12, v13}, LV0/c;->x(IIII)I

    move-result v11

    add-int/lit8 v13, v8, 0x1

    aget-object v8, v16, v8

    aput-object v8, v10, v11

    move v8, v13

    :goto_13
    mul-int/2addr v5, v12

    aget-object v11, v16, v5

    instance-of v12, v11, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_20

    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_14

    :cond_20
    check-cast v11, Ljava/lang/String;

    invoke-static {v2, v11}, Lcom/google/protobuf/MessageSchema;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v16, v5

    :goto_14
    invoke-virtual {v9, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v11, v11

    add-int/lit8 v5, v5, 0x1

    aget-object v12, v16, v5

    instance-of v13, v12, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_21

    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/protobuf/MessageSchema;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v16, v5

    :goto_15
    invoke-virtual {v9, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v5, v12

    move/from16 v29, v3

    move-object/from16 v19, v7

    move-object/from16 v25, v14

    move/from16 v3, v31

    move v7, v5

    const/4 v5, 0x0

    goto/16 :goto_20

    :cond_22
    move/from16 v26, v11

    move/from16 v32, v12

    add-int/lit8 v11, v8, 0x1

    aget-object v12, v16, v8

    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/protobuf/MessageSchema;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/16 v13, 0x9

    if-eq v15, v13, :cond_23

    const/16 v13, 0x11

    if-ne v15, v13, :cond_24

    :cond_23
    move/from16 v29, v3

    move-object/from16 v19, v7

    const/4 v7, 0x2

    const/4 v13, 0x1

    goto/16 :goto_1a

    :cond_24
    const/16 v13, 0x1b

    if-eq v15, v13, :cond_25

    const/16 v13, 0x31

    if-ne v15, v13, :cond_26

    :cond_25
    move/from16 v29, v3

    move-object/from16 v19, v7

    const/4 v7, 0x2

    const/4 v13, 0x1

    goto/16 :goto_19

    :cond_26
    const/16 v13, 0xc

    if-eq v15, v13, :cond_2b

    const/16 v13, 0x1e

    if-eq v15, v13, :cond_2b

    const/16 v13, 0x2c

    if-ne v15, v13, :cond_27

    goto :goto_17

    :cond_27
    const/16 v13, 0x32

    if-ne v15, v13, :cond_29

    add-int/lit8 v13, v22, 0x1

    aput v4, v14, v22

    div-int/lit8 v22, v4, 0x3

    const/16 v21, 0x2

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v29, v8, 0x2

    aget-object v11, v16, v11

    aput-object v11, v10, v22

    and-int/lit16 v11, v1, 0x800

    if-eqz v11, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v11, v8, 0x3

    aget-object v8, v16, v29

    aput-object v8, v10, v22

    move/from16 v29, v3

    move-object/from16 v19, v7

    move/from16 v22, v13

    :goto_16
    const/4 v13, 0x1

    goto :goto_1b

    :cond_28
    move-object/from16 v19, v7

    move/from16 v22, v13

    move/from16 v11, v29

    const/4 v13, 0x1

    move/from16 v29, v3

    goto :goto_1b

    :cond_29
    move/from16 v29, v3

    :cond_2a
    move-object/from16 v19, v7

    goto :goto_16

    :cond_2b
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->c()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v13

    move/from16 v29, v3

    sget-object v3, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-eq v13, v3, :cond_2c

    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_2a

    :cond_2c
    const/4 v3, 0x3

    move-object/from16 v19, v7

    const/4 v7, 0x2

    const/4 v13, 0x1

    invoke-static {v4, v3, v7, v13}, LV0/c;->x(IIII)I

    move-result v3

    add-int/lit8 v8, v8, 0x2

    aget-object v11, v16, v11

    aput-object v11, v10, v3

    :goto_18
    move v11, v8

    goto :goto_1b

    :goto_19
    const/4 v3, 0x3

    invoke-static {v4, v3, v7, v13}, LV0/c;->x(IIII)I

    move-result v3

    add-int/lit8 v8, v8, 0x2

    aget-object v11, v16, v11

    aput-object v11, v10, v3

    goto :goto_18

    :goto_1a
    const/4 v3, 0x3

    invoke-static {v4, v3, v7, v13}, LV0/c;->x(IIII)I

    move-result v3

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v10, v3

    :goto_1b
    invoke-virtual {v9, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v3, v7

    and-int/lit16 v7, v1, 0x1000

    if-eqz v7, :cond_30

    const/16 v7, 0x11

    if-gt v15, v7, :cond_30

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v8, 0xd800

    if-lt v5, v8, :cond_2e

    and-int/lit16 v5, v5, 0x1fff

    const/16 v12, 0xd

    :goto_1c
    add-int/lit8 v25, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2d

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v12

    or-int/2addr v5, v7

    add-int/lit8 v12, v12, 0xd

    move/from16 v7, v25

    goto :goto_1c

    :cond_2d
    shl-int/2addr v7, v12

    or-int/2addr v5, v7

    move/from16 v7, v25

    :cond_2e
    const/4 v12, 0x2

    mul-int/lit8 v21, v6, 0x2

    div-int/lit8 v25, v5, 0x20

    add-int v25, v25, v21

    aget-object v8, v16, v25

    instance-of v12, v8, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_2f

    check-cast v8, Ljava/lang/reflect/Field;

    :goto_1d
    move-object/from16 v25, v14

    goto :goto_1e

    :cond_2f
    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/google/protobuf/MessageSchema;->O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v16, v25

    goto :goto_1d

    :goto_1e
    invoke-virtual {v9, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    rem-int/lit8 v5, v5, 0x20

    move/from16 v33, v8

    move v8, v7

    move/from16 v7, v33

    goto :goto_1f

    :cond_30
    move-object/from16 v25, v14

    const v7, 0xfffff

    move v8, v5

    const/4 v5, 0x0

    :goto_1f
    const/16 v13, 0x12

    if-lt v15, v13, :cond_31

    const/16 v13, 0x31

    if-gt v15, v13, :cond_31

    add-int/lit8 v13, v23, 0x1

    aput v3, v25, v23

    move/from16 v23, v13

    :cond_31
    move/from16 v33, v11

    move v11, v3

    move v3, v8

    move/from16 v8, v33

    :goto_20
    add-int/lit8 v13, v4, 0x1

    aput v29, v19, v4

    add-int/lit8 v14, v4, 0x2

    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_32

    const/high16 v12, 0x20000000

    goto :goto_21

    :cond_32
    const/4 v12, 0x0

    :goto_21
    move-object/from16 v30, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_33

    const/high16 v0, 0x10000000

    goto :goto_22

    :cond_33
    const/4 v0, 0x0

    :goto_22
    or-int/2addr v0, v12

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_34

    const/high16 v1, -0x80000000

    goto :goto_23

    :cond_34
    const/4 v1, 0x0

    :goto_23
    or-int/2addr v0, v1

    shl-int/lit8 v1, v15, 0x14

    or-int/2addr v0, v1

    or-int/2addr v0, v11

    aput v0, v19, v13

    add-int/lit8 v4, v4, 0x3

    shl-int/lit8 v0, v5, 0x14

    or-int/2addr v0, v7

    aput v0, v19, v14

    move-object/from16 v7, v19

    move/from16 v13, v24

    move-object/from16 v14, v25

    move/from16 v11, v26

    move/from16 v1, v27

    move/from16 v15, v28

    move-object/from16 v0, v30

    move/from16 v12, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_35
    move-object/from16 v19, v7

    move/from16 v32, v12

    move/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v28, v15

    new-instance v0, Lcom/google/protobuf/MessageSchema;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/RawMessageInfo;->b()Lcom/google/protobuf/MessageLite;

    move-result-object v13

    move-object v8, v0

    move-object/from16 v9, v19

    move/from16 v11, v32

    move/from16 v12, v24

    move/from16 v16, v20

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    invoke-direct/range {v8 .. v21}, Lcom/google/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/MessageLite;[IIILcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)V

    return-object v0
.end method

.method public static D(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static E(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static F(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static O(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static U(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static X(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->f(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mutating immutable message: "

    invoke-static {p0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 1

    sget-object v0, Lcom/google/protobuf/MessageSchema$1;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->E([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedInputStream;->c(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    sget-object p3, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {p3, p4}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/protobuf/ArrayDecoders;->o(Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_6
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->k(I[B)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    :pswitch_7
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->i(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x8

    goto :goto_3

    :pswitch_8
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->g(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_9
    invoke-static {p1, p0}, Lcom/google/protobuf/ArrayDecoders;->d(I[B)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->b([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    goto :goto_3

    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    sget-object v1, Lcom/google/protobuf/UnknownFieldSetLite;->f:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method public static u(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final B(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final G(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 6

    sget-object v0, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p5}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {p0, v1}, Lcom/google/protobuf/MapFieldSchema;->h(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/google/protobuf/MapFieldSchema;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Lcom/google/protobuf/MapFieldSchema;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_0
    invoke-interface {p0, p5}, Lcom/google/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    invoke-interface {p0, v1}, Lcom/google/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-static {p2, p3, p8}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget p5, p8, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz p5, :cond_7

    sub-int p6, p4, p3

    if-gt p5, p6, :cond_7

    add-int/2addr p5, p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lcom/google/protobuf/Value;->a:Lcom/google/protobuf/Value;

    const-string p7, ""

    :goto_0
    if-ge p3, p5, :cond_5

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    invoke-static {p3, p2, v0, p8}, Lcom/google/protobuf/ArrayDecoders;->G(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget p3, p8, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    :cond_1
    move v1, v0

    ushr-int/lit8 v0, p3, 0x3

    and-int/lit8 v2, p3, 0x7

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/protobuf/MapEntryLite$Metadata;->b:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->c()I

    move-result v0

    if-ne v2, v0, :cond_4

    const-class v4, Lcom/google/protobuf/Value;

    iget-object v3, p1, Lcom/google/protobuf/MapEntryLite$Metadata;->b:Lcom/google/protobuf/WireFormat$FieldType;

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->m([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object p6, p8, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/google/protobuf/MapEntryLite$Metadata;->a:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->c()I

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v3, p1, Lcom/google/protobuf/MapEntryLite$Metadata;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v4, 0x0

    move-object v0, p2

    move v2, p4

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->m([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    iget-object p7, p8, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p3, p2, v1, p4, p8}, Lcom/google/protobuf/ArrayDecoders;->N(I[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p5, :cond_6

    invoke-virtual {p0, p7, p6}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p5

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->h()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final H(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1a

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/ArrayDecoders;->G(I[BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v3, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    goto :goto_1

    :cond_0
    move/from16 v28, v3

    move v3, v0

    move/from16 v0, v28

    :goto_1
    ushr-int/lit8 v8, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    iget v7, v15, Lcom/google/protobuf/MessageSchema;->d:I

    move/from16 p3, v0

    iget v0, v15, Lcom/google/protobuf/MessageSchema;->c:I

    move/from16 v19, v3

    const/4 v3, 0x3

    if-le v8, v1, :cond_2

    div-int/2addr v2, v3

    if-lt v8, v0, :cond_1

    if-gt v8, v7, :cond_1

    invoke-virtual {v15, v8, v2}, Lcom/google/protobuf/MessageSchema;->R(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v2, v0

    const/4 v1, -0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_2
    if-lt v8, v0, :cond_3

    if-gt v8, v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v15, v8, v7}, Lcom/google/protobuf/MessageSchema;->R(II)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    const/4 v0, -0x1

    :goto_3
    move v2, v0

    const/4 v1, -0x1

    :goto_4
    if-ne v2, v1, :cond_4

    move/from16 v2, p3

    move/from16 v18, v1

    move/from16 v21, v4

    move/from16 v24, v5

    move/from16 v20, v7

    move/from16 v25, v20

    move/from16 v17, v8

    move-object/from16 v27, v10

    move v0, v11

    :goto_5
    move/from16 v8, v19

    goto/16 :goto_1b

    :cond_4
    add-int/lit8 v0, v2, 0x1

    iget-object v1, v15, Lcom/google/protobuf/MessageSchema;->a:[I

    aget v0, v1, v0

    invoke-static {v0}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v3

    const v16, 0xfffff

    and-int v7, v0, v16

    int-to-long v11, v7

    const/16 v7, 0x11

    move-wide/from16 v21, v11

    if-gt v3, v7, :cond_f

    add-int/lit8 v7, v2, 0x2

    aget v1, v1, v7

    ushr-int/lit8 v7, v1, 0x14

    const/4 v12, 0x1

    shl-int v7, v12, v7

    const v12, 0xfffff

    and-int/2addr v1, v12

    if-eq v1, v5, :cond_7

    if-eq v5, v12, :cond_5

    int-to-long v11, v5

    invoke-virtual {v10, v14, v11, v12, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v11, 0xfffff

    goto :goto_6

    :cond_5
    move v11, v12

    :goto_6
    if-ne v1, v11, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    int-to-long v4, v1

    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_7
    move/from16 v24, v1

    move v12, v4

    goto :goto_8

    :cond_7
    move v11, v12

    move v12, v4

    move/from16 v24, v5

    :goto_8
    const/4 v1, 0x5

    packed-switch v3, :pswitch_data_0

    move/from16 v13, p3

    move v11, v2

    move/from16 p3, v8

    const/16 v18, -0x1

    move-object/from16 v8, p2

    goto/16 :goto_16

    :pswitch_0
    const/4 v0, 0x3

    if-ne v6, v0, :cond_8

    invoke-virtual {v15, v2, v14}, Lcom/google/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    shl-int/lit8 v0, v8, 0x3

    or-int/lit8 v5, v0, 0x4

    invoke-virtual {v15, v2}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move/from16 v4, p3

    move-object v0, v6

    const/16 v16, -0x1

    move v3, v2

    move-object/from16 v2, p2

    move v11, v3

    move/from16 v13, v19

    move v3, v4

    move/from16 v4, p4

    move/from16 p3, v8

    move/from16 v18, v16

    move-object v8, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->L(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-virtual {v15, v11, v14, v8}, Lcom/google/protobuf/MessageSchema;->S(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v4, v12, v7

    move-object/from16 v12, p2

    move/from16 v1, p3

    :goto_9
    move v2, v11

    move v3, v13

    move/from16 v5, v24

    :goto_a
    move/from16 v13, p4

    :goto_b
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_8
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    const/16 v18, -0x1

    move-object/from16 v8, p2

    :goto_c
    move v13, v4

    goto/16 :goto_16

    :pswitch_1
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-nez v6, :cond_9

    move-wide/from16 v2, v21

    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iget-wide v0, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedInputStream;->c(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v12, v7

    move/from16 v1, p3

    move v0, v6

    :goto_d
    move-object v12, v8

    goto :goto_9

    :cond_9
    move/from16 v19, v13

    goto :goto_c

    :pswitch_2
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-nez v6, :cond_9

    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->b(I)I

    move-result v1

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_e
    or-int v4, v12, v7

    move/from16 v1, p3

    goto :goto_d

    :pswitch_3
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-nez v6, :cond_9

    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v15, v11}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    const/high16 v6, -0x80000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_b

    if-eqz v5, :cond_b

    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_f

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->r(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    move v0, v1

    move v2, v11

    move v4, v12

    move v3, v13

    move/from16 v5, v24

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object v12, v8

    goto/16 :goto_0

    :cond_b
    :goto_f
    invoke-virtual {v10, v14, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v4, v12, v7

    move v0, v1

    move-object v12, v8

    move v2, v11

    move v3, v13

    move/from16 v5, v24

    move/from16 v1, p3

    goto/16 :goto_a

    :pswitch_4
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/4 v0, 0x2

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v0, :cond_9

    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->b([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_e

    :pswitch_5
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v0, :cond_9

    invoke-virtual {v15, v11, v14}, Lcom/google/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move-object v0, v6

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->M(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    invoke-virtual {v15, v11, v14, v6}, Lcom/google/protobuf/MessageSchema;->S(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_6
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/4 v1, 0x2

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v1, :cond_9

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->E([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_10

    :cond_c
    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->B([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_10
    iget-object v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_7
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-nez v6, :cond_9

    invoke-static {v8, v4, v9}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v21, 0x0

    cmp-long v1, v4, v21

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_11

    :cond_d
    const/4 v1, 0x0

    :goto_11
    invoke-static {v14, v2, v3, v1}, Lcom/google/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JZ)V

    goto/16 :goto_e

    :pswitch_8
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v1, :cond_9

    invoke-static {v4, v8}, Lcom/google/protobuf/ArrayDecoders;->g(I[B)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto/16 :goto_e

    :pswitch_9
    move/from16 v4, p3

    move v11, v2

    move/from16 p3, v8

    move/from16 v13, v19

    move-wide/from16 v2, v21

    const/4 v0, 0x1

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v0, :cond_9

    invoke-static {v4, v8}, Lcom/google/protobuf/ArrayDecoders;->i(I[B)J

    move-result-wide v5

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v19, v13

    move v13, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_12
    add-int/lit8 v0, v13, 0x8

    :goto_13
    or-int v4, v12, v7

    move/from16 v1, p3

    move/from16 v13, p4

    :goto_14
    move-object v12, v8

    move v2, v11

    move/from16 v3, v19

    :goto_15
    move/from16 v5, v24

    goto/16 :goto_b

    :pswitch_a
    move/from16 v13, p3

    move v11, v2

    move/from16 p3, v8

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-nez v6, :cond_e

    invoke-static {v8, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_13

    :pswitch_b
    move/from16 v13, p3

    move v11, v2

    move/from16 p3, v8

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-nez v6, :cond_e

    invoke-static {v8, v13, v9}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iget-wide v4, v9, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v4, v12, v7

    move/from16 v1, p3

    move/from16 v13, p4

    move v0, v6

    goto :goto_14

    :pswitch_c
    move/from16 v13, p3

    move v11, v2

    move/from16 p3, v8

    move-wide/from16 v2, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v1, :cond_e

    invoke-static {v13, v8}, Lcom/google/protobuf/ArrayDecoders;->k(I[B)F

    move-result v0

    invoke-static {v0, v2, v3, v14}, Lcom/google/protobuf/UnsafeUtil;->s(FJLjava/lang/Object;)V

    add-int/lit8 v0, v13, 0x4

    goto :goto_13

    :pswitch_d
    move/from16 v13, p3

    move v11, v2

    move/from16 p3, v8

    move-wide/from16 v2, v21

    const/4 v0, 0x1

    const/16 v18, -0x1

    move-object/from16 v8, p2

    if-ne v6, v0, :cond_e

    invoke-static {v13, v8}, Lcom/google/protobuf/ArrayDecoders;->d(I[B)D

    move-result-wide v0

    invoke-static {v2, v3, v14, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->r(JLjava/lang/Object;D)V

    goto :goto_12

    :cond_e
    :goto_16
    move/from16 v17, p3

    move/from16 v0, p5

    move-object/from16 v27, v10

    move/from16 v25, v11

    move/from16 v21, v12

    move v2, v13

    move/from16 v8, v19

    const/16 v20, 0x0

    goto/16 :goto_1b

    :cond_f
    move/from16 v13, p3

    move v11, v2

    move/from16 p3, v8

    move-wide/from16 v1, v21

    const/16 v18, -0x1

    move-object/from16 v8, p2

    const/16 v7, 0x1b

    if-ne v3, v7, :cond_13

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->S()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_10

    const/16 v3, 0xa

    goto :goto_17

    :cond_10
    mul-int/lit8 v3, v3, 0x2

    :goto_17
    invoke-interface {v0, v3}, Lcom/google/protobuf/Internal$ProtobufList;->a(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v6, v0

    invoke-virtual {v15, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move/from16 v1, v19

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v21, v4

    move/from16 v4, p4

    move/from16 v24, v5

    move-object v5, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/ArrayDecoders;->p(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move/from16 v1, p3

    move/from16 v13, p4

    move-object v12, v8

    move v2, v11

    move/from16 v3, v19

    move/from16 v4, v21

    goto/16 :goto_15

    :cond_12
    move/from16 v21, v4

    move/from16 v24, v5

    move/from16 v17, p3

    move-object/from16 v27, v10

    move/from16 v25, v11

    move v15, v13

    const/16 v20, 0x0

    goto/16 :goto_1a

    :cond_13
    move/from16 v21, v4

    move/from16 v24, v5

    const/16 v4, 0x31

    if-gt v3, v4, :cond_15

    int-to-long v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v12, v3

    move v3, v13

    move-wide/from16 v25, v4

    move/from16 v4, p4

    move/from16 v5, v19

    move v7, v6

    move/from16 v6, p3

    const/16 v20, 0x0

    move/from16 v17, p3

    move v8, v11

    move-object/from16 v27, v10

    move-wide/from16 v9, v25

    move/from16 v15, p5

    move/from16 v25, v11

    move v11, v12

    move v15, v13

    move-wide/from16 v12, v22

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/MessageSchema;->J(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_14

    :goto_18
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v17

    move/from16 v3, v19

    move/from16 v4, v21

    move/from16 v5, v24

    move/from16 v2, v25

    :goto_19
    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_14
    move v2, v0

    move/from16 v8, v19

    move/from16 v0, p5

    goto :goto_1b

    :cond_15
    move/from16 v17, p3

    move-wide/from16 v22, v1

    move v12, v3

    move v7, v6

    move-object/from16 v27, v10

    move/from16 v25, v11

    move v15, v13

    const/16 v20, 0x0

    const/16 v1, 0x32

    if-ne v12, v1, :cond_17

    const/4 v1, 0x2

    if-ne v7, v1, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v25

    move-wide/from16 v6, v22

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/MessageSchema;->G(Ljava/lang/Object;[BIIIJLcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_18

    :cond_16
    :goto_1a
    move/from16 v0, p5

    move v2, v15

    goto/16 :goto_5

    :cond_17
    move v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move/from16 v6, v17

    move v9, v12

    move-wide/from16 v10, v22

    move/from16 v12, v25

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/MessageSchema;->I(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_18

    :goto_1b
    if-ne v8, v0, :cond_18

    if-eqz v0, :cond_18

    move-object/from16 v9, p0

    move v10, v0

    move v6, v2

    move/from16 v4, v21

    move/from16 v5, v24

    :goto_1c
    const v0, 0xfffff

    goto/16 :goto_1e

    :cond_18
    move-object/from16 v9, p0

    move v10, v0

    iget-boolean v0, v9, Lcom/google/protobuf/MessageSchema;->f:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_19

    iget-object v0, v11, Lcom/google/protobuf/ArrayDecoders$Registers;->d:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->a()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    if-eq v0, v1, :cond_19

    iget-object v5, v9, Lcom/google/protobuf/MessageSchema;->e:Lcom/google/protobuf/MessageLite;

    iget-object v6, v9, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/ArrayDecoders;->f(I[BIILjava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_1d

    :cond_19
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->r(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/ArrayDecoders;->F(I[BIILcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    :goto_1d
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v11

    move/from16 v1, v17

    move/from16 v4, v21

    move/from16 v5, v24

    move/from16 v2, v25

    move v11, v10

    goto/16 :goto_19

    :cond_1a
    move/from16 v21, v4

    move/from16 v24, v5

    move-object/from16 v27, v10

    move v10, v11

    move-object v9, v15

    move v6, v0

    move v8, v3

    goto :goto_1c

    :goto_1e
    if-eq v5, v0, :cond_1b

    int-to-long v0, v5

    move-object/from16 v7, p1

    move-object/from16 v2, v27

    invoke-virtual {v2, v7, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1f

    :cond_1b
    move-object/from16 v7, p1

    :goto_1f
    const/4 v0, 0x0

    iget v1, v9, Lcom/google/protobuf/MessageSchema;->i:I

    move-object v3, v0

    move v11, v1

    :goto_20
    iget v0, v9, Lcom/google/protobuf/MessageSchema;->j:I

    if-ge v11, v0, :cond_1c

    iget-object v0, v9, Lcom/google/protobuf/MessageSchema;->h:[I

    aget v2, v0, v11

    iget-object v4, v9, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_1c
    if-eqz v3, :cond_1d

    iget-object v0, v9, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, v7, v3}, Lcom/google/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    if-nez v10, :cond_1f

    move/from16 v0, p4

    if-ne v6, v0, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1f
    move/from16 v0, p4

    if-gt v6, v0, :cond_20

    if-ne v8, v10, :cond_20

    :goto_21
    return v6

    :cond_20
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

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

.method public final I(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    add-int/lit8 v12, v10, 0x2

    iget-object v13, v0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget v12, v13, v12

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/ArrayDecoders;->L(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v0, v1, v9, v11, v10}, Lcom/google/protobuf/MessageSchema;->T(Ljava/lang/Object;ILjava/lang/Object;I)V

    :goto_0
    move v0, v2

    goto/16 :goto_7

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedInputStream;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_3
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/MessageSchema;->r(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v0, v3

    goto/16 :goto_7

    :pswitch_4
    if-ne v3, v14, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->b([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-object v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v3, v14, :cond_6

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->M(Ljava/lang/Object;Lcom/google/protobuf/Schema;[BIILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {v0, v1, v9, v11, v10}, Lcom/google/protobuf/MessageSchema;->T(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_6
    if-ne v3, v14, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_4

    add-int v3, v0, v2

    invoke-static {v4, v0, v3}, Lcom/google/protobuf/Utf8;->g([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_3
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_7
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_8
    const/4 v0, 0x5

    if-ne v3, v0, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->g(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_9
    if-ne v3, v15, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->i(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_a
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->H([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_b
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/ArrayDecoders;->J([BILcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_c
    const/4 v0, 0x5

    if-ne v3, v0, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->k(I[B)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_d
    if-ne v3, v15, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/ArrayDecoders;->d(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :cond_6
    :goto_6
    move v0, v5

    :goto_7
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

.method public final J(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/ArrayDecoders$Registers;)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v10}, Lcom/google/protobuf/Internal$ProtobufList;->S()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    mul-int/2addr v11, v12

    invoke-interface {v10, v11}, Lcom/google/protobuf/Internal$ProtobufList;->a(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v10

    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x5

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_c

    invoke-virtual {p0, v8}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/ArrayDecoders;->n(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_1
    if-ne v2, v12, :cond_1

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->w([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_1
    if-nez v2, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->A(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_2
    if-ne v2, v12, :cond_2

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->v([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_2
    if-nez v2, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->z(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_3
    if-ne v2, v12, :cond_3

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->x([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_0

    :cond_3
    if-nez v2, :cond_c

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/ArrayDecoders;->I(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    :goto_0
    invoke-virtual {p0, v8}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    move-object p0, p1

    move/from16 p1, p6

    move-object p2, v10

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/SchemaUtil;->A(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_2

    :pswitch_4
    if-ne v2, v12, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->c(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_5
    if-ne v2, v12, :cond_c

    invoke-virtual {p0, v8}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/ArrayDecoders;->p(Lcom/google/protobuf/Schema;I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_6
    if-ne v2, v12, :cond_c

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_4

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->C(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_4
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->D(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_7
    if-ne v2, v12, :cond_5

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->q([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_5
    if-nez v2, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->a(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_8
    if-ne v2, v12, :cond_6

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->s([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_6
    if-ne v2, v6, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->h(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_9
    if-ne v2, v12, :cond_7

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->t([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_7
    if-ne v2, v5, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->j(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :pswitch_a
    if-ne v2, v12, :cond_8

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->x([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto/16 :goto_2

    :cond_8
    if-nez v2, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->I(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :pswitch_b
    if-ne v2, v12, :cond_9

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->y([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :cond_9
    if-nez v2, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->K(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :pswitch_c
    if-ne v2, v12, :cond_a

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->u([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :cond_a
    if-ne v2, v6, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->l(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :pswitch_d
    if-ne v2, v12, :cond_b

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/ArrayDecoders;->r([BILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :cond_b
    if-ne v2, v5, :cond_c

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/ArrayDecoders;->e(I[BIILcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    goto :goto_2

    :cond_c
    :goto_1
    move v0, v4

    :goto_2
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

.method public final K(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    invoke-interface {p0, p2, p3, p1}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    invoke-interface {p4, p0, p5, p6}, Lcom/google/protobuf/Reader;->d(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final L(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    invoke-interface {p0, v0, v1, p1}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    invoke-interface {p3, p0, p4, p5}, Lcom/google/protobuf/Reader;->f(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final M(ILcom/google/protobuf/Reader;Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    if-eqz v0, :cond_1

    and-int p0, p1, v1

    int-to-long p0, p0

    invoke-interface {p2}, Lcom/google/protobuf/Reader;->O()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/protobuf/MessageSchema;->g:Z

    if-eqz p0, :cond_2

    and-int p0, p1, v1

    int-to-long p0, p0

    invoke-interface {p2}, Lcom/google/protobuf/Reader;->E()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    and-int p0, p1, v1

    int-to-long p0, p0

    invoke-interface {p2}, Lcom/google/protobuf/Reader;->r()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final N(ILcom/google/protobuf/Reader;Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    if-eqz v0, :cond_1

    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1, p3}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/protobuf/Reader;->q(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1, p3}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/protobuf/Reader;->G(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public final P(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

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

    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {v0, v1, p0, p2}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    return-void
.end method

.method public final Q(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p3}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    return-void
.end method

.method public final R(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

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

.method public final S(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    return-void
.end method

.method public final T(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    return-void
.end method

.method public final V(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final W(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/protobuf/MessageSchema;->f:Z

    iget-object v9, v6, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    if-eqz v0, :cond_0

    invoke-virtual {v9, v7}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->l()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v11, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v6, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v13, v12

    sget-object v14, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    const v0, 0xfffff

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v13, :cond_8

    invoke-virtual {v6, v4}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v3

    aget v10, v12, v4

    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v5

    const/16 v15, 0x11

    move-object/from16 v18, v1

    if-gt v5, v15, :cond_3

    add-int/lit8 v15, v4, 0x2

    aget v15, v12, v15

    move/from16 v20, v2

    const v1, 0xfffff

    and-int v2, v15, v1

    if-eq v2, v0, :cond_2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    int-to-long v0, v2

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_2
    move/from16 v24, v2

    move v2, v0

    move/from16 v0, v24

    goto :goto_3

    :cond_2
    move/from16 v2, v20

    :goto_3
    ushr-int/lit8 v1, v15, 0x14

    const/4 v15, 0x1

    shl-int v1, v15, v1

    move v15, v0

    move/from16 v20, v2

    move-object/from16 v2, v18

    move/from16 v18, v1

    goto :goto_4

    :cond_3
    move/from16 v20, v2

    move v15, v0

    move-object/from16 v2, v18

    const/16 v18, 0x0

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v9, v2}, Lcom/google/protobuf/ExtensionSchema;->a(Ljava/util/Map$Entry;)I

    move-result v0

    if-gt v0, v10, :cond_5

    invoke-virtual {v9, v8, v2}, Lcom/google/protobuf/ExtensionSchema;->j(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const v17, 0xfffff

    and-int v0, v3, v17

    int-to-long v0, v0

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_5
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    :goto_6
    move v11, v4

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v4}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->i(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->q(IJ)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->O(II)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->m(IJ)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->D(II)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->L(II)V

    goto :goto_5

    :pswitch_6
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->t(II)V

    goto :goto_5

    :pswitch_7
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_5

    :pswitch_8
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v4}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->w(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0, v8}, Lcom/google/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v0, v1, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->C(IZ)V

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->d(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->x(IJ)V

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->k(II)V

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->g(IJ)V

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->B(IJ)V

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v0, v1, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v8, v0, v10}, Lcom/google/protobuf/Writer;->A(FI)V

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v0, v1, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {v8, v0, v1, v10}, Lcom/google/protobuf/Writer;->l(DI)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v6, v4}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v6, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v3, v1}, Lcom/google/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/google/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-interface {v8, v10, v1, v0}, Lcom/google/protobuf/Writer;->I(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto/16 :goto_5

    :pswitch_13
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v4}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v3, v0, v8, v1}, Lcom/google/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_14
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->S(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_15
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->R(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_16
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->Q(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_17
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_18
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_19
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->U(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_1a
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_1b
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_1c
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_1d
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_1e
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->V(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_1f
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_20
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_21
    const/4 v5, 0x1

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_22
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->S(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    :goto_7
    move-object/from16 v21, v2

    move/from16 v23, v5

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    goto/16 :goto_6

    :pswitch_23
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->R(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_7

    :pswitch_24
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->Q(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_7

    :pswitch_25
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_7

    :pswitch_26
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_7

    :pswitch_27
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->U(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto :goto_7

    :pswitch_28
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8}, Lcom/google/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_5

    :pswitch_29
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v4}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v3, v0, v8, v1}, Lcom/google/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_2a
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8}, Lcom/google/protobuf/SchemaUtil;->T(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_5

    :pswitch_2b
    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_2c
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_2d
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_2e
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_2f
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->V(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_30
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_31
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_32
    const/4 v5, 0x0

    aget v3, v12, v4

    invoke-virtual {v14, v7, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0, v8, v5}, Lcom/google/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_7

    :pswitch_33
    move-object/from16 v16, v12

    move/from16 v19, v13

    const/4 v5, 0x0

    move-wide v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move v2, v4

    move v3, v15

    move-object/from16 v22, v11

    move v11, v4

    move/from16 v4, v20

    move/from16 v23, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->i(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_8

    :pswitch_34
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->q(IJ)V

    goto/16 :goto_8

    :pswitch_35
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->O(II)V

    goto/16 :goto_8

    :pswitch_36
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->m(IJ)V

    goto/16 :goto_8

    :pswitch_37
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->D(II)V

    goto/16 :goto_8

    :pswitch_38
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->L(II)V

    goto/16 :goto_8

    :pswitch_39
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->t(II)V

    goto/16 :goto_8

    :pswitch_3a
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_8

    :pswitch_3b
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->w(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_8

    :pswitch_3c
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0, v8}, Lcom/google/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_8

    :pswitch_3d
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->C(IZ)V

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->d(II)V

    goto/16 :goto_8

    :pswitch_3f
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->x(IJ)V

    goto/16 :goto_8

    :pswitch_40
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v10, v0}, Lcom/google/protobuf/Writer;->k(II)V

    goto/16 :goto_8

    :pswitch_41
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->g(IJ)V

    goto/16 :goto_8

    :pswitch_42
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v7, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v10, v0, v1}, Lcom/google/protobuf/Writer;->B(IJ)V

    goto :goto_8

    :pswitch_43
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result v0

    invoke-interface {v8, v0, v10}, Lcom/google/protobuf/Writer;->A(FI)V

    goto :goto_8

    :pswitch_44
    move-object/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v16, v12

    move/from16 v19, v13

    const/16 v23, 0x0

    move-wide v12, v0

    move v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v20

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v12, v13, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

    move-result-wide v0

    invoke-interface {v8, v0, v1, v10}, Lcom/google/protobuf/Writer;->l(DI)V

    :cond_7
    :goto_8
    add-int/lit8 v4, v11, 0x3

    move v0, v15

    move-object/from16 v12, v16

    move/from16 v13, v19

    move/from16 v2, v20

    move-object/from16 v1, v21

    move-object/from16 v11, v22

    goto/16 :goto_1

    :cond_8
    move-object/from16 v18, v1

    move-object/from16 v22, v11

    :goto_9
    if-eqz v1, :cond_a

    invoke-virtual {v9, v8, v1}, Lcom/google/protobuf/ExtensionSchema;->j(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    iget-object v0, v6, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/google/protobuf/UnknownFieldSchema;->q(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

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

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->k:Lcom/google/protobuf/NewInstanceSchema;

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->e:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0, p0}, Lcom/google/protobuf/NewInstanceSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->clearMemoizedSerializedSize()V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->clearMemoizedHashCode()V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->markImmutable()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->U(I)I

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
    sget-object v3, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v7, v6}, Lcom/google/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    invoke-interface {v3, v4, v5, p1}, Lcom/google/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    aget v3, v0, v2

    invoke-virtual {p0, v3, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    sget-object v6, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v3

    sget-object v6, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->j(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->f(Ljava/lang/Object;)V

    :cond_6
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
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lcom/google/protobuf/MessageSchema;->i:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_e

    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->h:[I

    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->a:[I

    aget v12, v2, v11

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v13

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    int-to-long v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8

    const/16 v1, 0x31

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int v0, v13, v8

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v0, v1, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v6, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v1, v0}, Lcom/google/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v1

    iget-object v1, v1, Lcom/google/protobuf/MapEntryLite$Metadata;->b:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->a()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq v1, v2, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    sget-object v1, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v1

    :cond_7
    invoke-interface {v1, v2}, Lcom/google/protobuf/Schema;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v9

    :cond_8
    invoke-virtual {v6, v12, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    and-int v1, v13, v8

    int-to-long v1, v1

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v1, v2, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Schema;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_9
    and-int v0, v13, v8

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v0, v1, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    move v2, v9

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/protobuf/Schema;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v9

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v0

    and-int v1, v13, v8

    int-to-long v1, v1

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v1, v2, v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Schema;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_d
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_e
    iget-boolean v0, v6, Lcom/google/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->j()Z

    move-result v0

    if-nez v0, :cond_f

    return v9

    :cond_f
    return v3
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    aget v1, v1, v0

    invoke-static {v2}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->z(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->z(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v5, v2, v1}, Lcom/google/protobuf/MapFieldSchema;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    invoke-interface {v1, v3, v4, p1, p2}, Lcom/google/protobuf/ListFieldSchema;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/MessageSchema;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/UnsafeUtil;->s(FJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v3, v4, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {v3, v4, p1, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->r(JLjava/lang/Object;D)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/UnknownFieldSchema;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->B(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
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

.method public final e(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12

    invoke-interface {p2}, Lcom/google/protobuf/Writer;->y()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->q(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->f:Z

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iget-object v3, v0, Lcom/google/protobuf/FieldSet;->a:Lcom/google/protobuf/SmallSortedMap$1;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/google/protobuf/FieldSet;->a:Lcom/google/protobuf/SmallSortedMap$1;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/google/protobuf/FieldSet;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/protobuf/LazyField$LazyIterator;

    new-instance v4, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v4, v3}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;)V

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v0, v3}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;)V

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    move-object v0, v2

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v5, v4

    add-int/lit8 v5, v5, -0x3

    :goto_2
    if-ltz v5, :cond_6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v6

    aget v7, v4, v5

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ExtensionSchema;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-le v8, v7, :cond_4

    invoke-virtual {v1, p2, v3}, Lcom/google/protobuf/ExtensionSchema;->j(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_3
    move-object v3, v2

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0xfffff

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->i(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->q(IJ)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->O(II)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->m(IJ)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->D(II)V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->L(II)V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->t(II)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->w(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->C(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->d(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->x(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->k(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->g(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    invoke-static {v8, v9, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->B(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {p2, v6, v7}, Lcom/google/protobuf/Writer;->A(FI)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {p0, v7, v5, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface {p2, v8, v9, v7}, Lcom/google/protobuf/Writer;->l(DI)V

    goto/16 :goto_4

    :pswitch_12
    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v9, v8}, Lcom/google/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v8

    invoke-interface {v9, v6}, Lcom/google/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v6

    invoke-interface {p2, v7, v8, v6}, Lcom/google/protobuf/Writer;->I(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto/16 :goto_4

    :pswitch_13
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_14
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->S(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_15
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->R(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_16
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->Q(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_17
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_18
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_19
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->U(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_1a
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_1b
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_1c
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_1d
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_1e
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->V(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_1f
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_20
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_21
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v10}, Lcom/google/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_22
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->S(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_23
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->R(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_24
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->Q(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_25
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_26
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_27
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->U(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_28
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_4

    :pswitch_29
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/protobuf/Writer;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_2a
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/SchemaUtil;->T(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_4

    :pswitch_2b
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2c
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2d
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2e
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_2f
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->V(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_30
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_31
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_32
    aget v7, v4, v5

    and-int/2addr v6, v11

    int-to-long v10, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v10, v11, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->i(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_34
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->q(IJ)V

    goto/16 :goto_4

    :pswitch_35
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->O(II)V

    goto/16 :goto_4

    :pswitch_36
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->m(IJ)V

    goto/16 :goto_4

    :pswitch_37
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->D(II)V

    goto/16 :goto_4

    :pswitch_38
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->L(II)V

    goto/16 :goto_4

    :pswitch_39
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->t(II)V

    goto/16 :goto_4

    :pswitch_3a
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_3b
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/Writer;->w(ILjava/lang/Object;Lcom/google/protobuf/Schema;)V

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_4

    :pswitch_3d
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->C(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->d(II)V

    goto :goto_4

    :pswitch_3f
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->x(IJ)V

    goto :goto_4

    :pswitch_40
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/Writer;->k(II)V

    goto :goto_4

    :pswitch_41
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->g(IJ)V

    goto :goto_4

    :pswitch_42
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/Writer;->B(IJ)V

    goto :goto_4

    :pswitch_43
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result v6

    invoke-interface {p2, v6, v7}, Lcom/google/protobuf/Writer;->A(FI)V

    goto :goto_4

    :pswitch_44
    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/2addr v6, v11

    int-to-long v8, v6

    sget-object v6, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v6, v8, v9, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

    move-result-wide v8

    invoke-interface {p2, v8, v9, v7}, Lcom/google/protobuf/Writer;->l(DI)V

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, -0x3

    goto/16 :goto_2

    :cond_6
    :goto_5
    if-eqz v3, :cond_9

    invoke-virtual {v1, p2, v3}, Lcom/google/protobuf/ExtensionSchema;->j(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    move-object v3, p0

    goto :goto_5

    :cond_7
    move-object v3, v2

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->W(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    :cond_9
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

.method public final f(Lcom/google/protobuf/AbstractMessageLite;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v8, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    const v10, 0xfffff

    move v0, v10

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v3, v2

    if-ge v11, v3, :cond_7

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v4

    aget v13, v2, v11

    add-int/lit8 v5, v11, 0x2

    aget v2, v2, v5

    and-int v5, v2, v10

    const/16 v14, 0x11

    if-gt v4, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    const/4 v5, 0x1

    shl-int v2, v5, v2

    move v14, v0

    move v15, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v14, v0

    move v15, v1

    const/4 v5, 0x0

    :goto_2
    and-int v0, v3, v10

    int-to-long v2, v0

    sget-object v0, Lcom/google/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->a()I

    move-result v0

    if-lt v4, v0, :cond_3

    sget-object v0, Lcom/google/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/protobuf/FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldType;->a()I

    move-result v0

    :cond_3
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v0

    :goto_3
    add-int/2addr v12, v0

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->i0(IJ)I

    move-result v0

    goto :goto_3

    :pswitch_2
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->g0(II)I

    move-result v0

    goto :goto_3

    :pswitch_3
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->f0(I)I

    move-result v0

    goto :goto_3

    :pswitch_4
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->e0(I)I

    move-result v0

    goto :goto_3

    :pswitch_5
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->W(II)I

    move-result v0

    goto :goto_3

    :pswitch_6
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(II)I

    move-result v0

    goto :goto_3

    :pswitch_7
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->T(ILcom/google/protobuf/ByteString;)I

    move-result v0

    goto :goto_3

    :pswitch_8
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/SchemaUtil;->o(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v0

    :goto_4
    add-int/2addr v12, v0

    goto/16 :goto_7

    :pswitch_9
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->T(ILcom/google/protobuf/ByteString;)I

    move-result v0

    :goto_5
    add-int/2addr v0, v12

    move v12, v0

    goto/16 :goto_7

    :cond_4
    check-cast v0, Ljava/lang/String;

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->k0(ILjava/lang/String;)I

    move-result v0

    goto :goto_5

    :pswitch_a
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->S(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->b0(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->p0(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->c0(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v6, v13, v11, v7}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v6, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v2, v13, v0, v1}, Lcom/google/protobuf/MapFieldSchema;->g(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_13
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/SchemaUtil;->j(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_14
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->t(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    :goto_6
    add-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/2addr v12, v2

    goto/16 :goto_7

    :pswitch_15
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->r(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto :goto_6

    :pswitch_16
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto :goto_6

    :pswitch_17
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto :goto_6

    :pswitch_18
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto :goto_6

    :pswitch_19
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->w(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto :goto_6

    :pswitch_1a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->b(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->l(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->y(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_1f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->n(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_20
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_21
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->o0(I)I

    move-result v2

    goto/16 :goto_6

    :pswitch_22
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->s(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->q(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_24
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->h(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_27
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->v(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_28
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_29
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/SchemaUtil;->p(ILjava/util/List;Lcom/google/protobuf/Schema;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->u(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->h(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->k(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_2f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->x(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_30
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->m(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_31
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v13, v0}, Lcom/google/protobuf/SchemaUtil;->h(ILjava/util/List;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->a0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->i0(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_35
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->g0(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->f0(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->e0(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_38
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->W(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_39
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3a
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->T(ILcom/google/protobuf/ByteString;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3b
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v11}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/SchemaUtil;->o(ILjava/lang/Object;Lcom/google/protobuf/Schema;)I

    move-result v0

    goto/16 :goto_4

    :pswitch_3c
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/ByteString;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->T(ILcom/google/protobuf/ByteString;)I

    move-result v0

    goto/16 :goto_5

    :cond_5
    check-cast v0, Ljava/lang/String;

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->k0(ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_5

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->S(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_40
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v13, v0}, Lcom/google/protobuf/CodedOutputStream;->b0(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_41
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->p0(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_42
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->c0(IJ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->t(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Lcom/google/protobuf/CodedOutputStream;->V(I)I

    move-result v0

    goto/16 :goto_3

    :cond_6
    :goto_7
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move v1, v15

    const v10, 0xfffff

    goto/16 :goto_0

    :cond_7
    iget-object v0, v6, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->h()I

    move-result v0

    add-int/2addr v12, v0

    :cond_8
    return v12

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

.method public final g(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/MessageSchema;->w(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;[BIILcom/google/protobuf/ArrayDecoders$Registers;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/MessageSchema;->H(Ljava/lang/Object;[BIIILcom/google/protobuf/ArrayDecoders$Registers;)I

    return-void
.end method

.method public final i(Lcom/google/protobuf/GeneratedMessageLite;)I
    .locals 11

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_3
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->E(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/MessageSchema;->F(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_4
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_5

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/protobuf/MessageSchema;->f:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p0

    iget-object p0, p0, Lcom/google/protobuf/FieldSet;->a:Lcom/google/protobuf/SmallSortedMap$1;

    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

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

.method public final j(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/protobuf/SchemaUtil;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protobuf/MessageSchema;->k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

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
    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->m:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->n:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/ExtensionSchema;->c(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
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

.method public final k(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v1, v2, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v2, p1}, Lcom/google/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/google/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Lcom/google/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/MapEntryLite;->a(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/google/protobuf/ByteString$CodedBuilder;

    invoke-direct {v3, v2}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(I)V

    iget-object v2, v3, Lcom/google/protobuf/ByteString$CodedBuilder;->a:Lcom/google/protobuf/CodedOutputStream;

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    iget-object v5, p0, Lcom/google/protobuf/MapEntryLite$Metadata;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v6, 0x1

    invoke-static {v2, v5, v6, v4}, Lcom/google/protobuf/FieldSet;->q(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/google/protobuf/MapEntryLite$Metadata;->b:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x2

    invoke-static {v2, v4, v5, p2}, Lcom/google/protobuf/FieldSet;->q(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedOutputStream;->u0()I

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/google/protobuf/ByteString$LiteralByteString;

    iget-object v2, v3, Lcom/google/protobuf/ByteString$CodedBuilder;->b:[B

    invoke-direct {p2, v2}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {p4, p3, v0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Did not write as much data as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    return-object p3
.end method

.method public final o(I)Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, LV0/c;->x(IIII)I

    move-result p1

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public final p(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final q(I)Lcom/google/protobuf/Schema;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final s(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :pswitch_1
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :pswitch_2
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    move v5, v6

    :cond_2
    return v5

    :pswitch_3
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v5, v6

    :cond_3
    return v5

    :pswitch_4
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :pswitch_5
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :pswitch_6
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    move v5, v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/protobuf/ByteString;->b:Lcom/google/protobuf/ByteString;

    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v5, v6

    :cond_7
    return v5

    :pswitch_9
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_8
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/google/protobuf/ByteString;->b:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    move v5, v6

    :cond_a
    return v5

    :pswitch_c
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v5, v6

    :cond_b
    return v5

    :pswitch_d
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    move v5, v6

    :cond_c
    return v5

    :pswitch_e
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v5, v6

    :cond_d
    return v5

    :pswitch_f
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->l(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v5, v6

    :cond_e
    return v5

    :pswitch_10
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_f

    move v5, v6

    :cond_f
    return v5

    :pswitch_11
    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)D

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

    sget-object p1, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

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

.method public final t(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->j(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p3

    move-object/from16 v0, p4

    move-object/from16 v6, p5

    iget-object v14, v8, Lcom/google/protobuf/MessageSchema;->h:[I

    iget v13, v8, Lcom/google/protobuf/MessageSchema;->j:I

    iget v5, v8, Lcom/google/protobuf/MessageSchema;->i:I

    const/16 v17, 0x0

    move-object/from16 v4, v17

    move-object v9, v4

    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->F()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    iget v1, v8, Lcom/google/protobuf/MessageSchema;->c:I

    const/4 v10, 0x0

    if-lt v2, v1, :cond_0

    iget v1, v8, Lcom/google/protobuf/MessageSchema;->d:I

    if-gt v2, v1, :cond_0

    invoke-virtual {v8, v2, v10}, Lcom/google/protobuf/MessageSchema;->R(II)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    :goto_1
    move v3, v1

    goto :goto_3

    :goto_2
    move/from16 v16, v5

    move v11, v13

    move-object/from16 v18, v14

    move-object v12, v15

    move-object v15, v4

    goto/16 :goto_13

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :goto_3
    if-gez v3, :cond_b

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_3

    move v0, v5

    :goto_4
    if-ge v0, v13, :cond_1

    aget v3, v14, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v7, v15, v4}, Lcom/google/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-boolean v1, v8, Lcom/google/protobuf/MessageSchema;->f:Z

    if-nez v1, :cond_4

    move-object/from16 v3, p2

    move-object/from16 v12, v17

    goto :goto_5

    :cond_4
    iget-object v1, v8, Lcom/google/protobuf/MessageSchema;->e:Lcom/google/protobuf/MessageLite;

    move-object/from16 v3, p2

    invoke-virtual {v3, v6, v1, v2}, Lcom/google/protobuf/ExtensionSchema;->b(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v12, v1

    :goto_5
    if-eqz v12, :cond_6

    if-nez v9, :cond_5

    :try_start_3
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/ExtensionSchema;->d(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move/from16 v16, v5

    move v11, v13

    move-object/from16 v18, v14

    move-object v12, v15

    goto/16 :goto_1d

    :cond_5
    move-object v1, v9

    :goto_6
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move v2, v13

    move-object/from16 v13, p5

    move-object/from16 v18, v14

    move-object v14, v1

    move-object v8, v15

    move-object v15, v4

    move-object/from16 v16, p1

    :try_start_4
    invoke-virtual/range {v9 .. v16}, Lcom/google/protobuf/ExtensionSchema;->g(Ljava/lang/Object;Lcom/google/protobuf/Reader;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v1

    :goto_7
    move v13, v2

    move-object v15, v8

    move-object/from16 v14, v18

    move-object/from16 v8, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move v11, v2

    :goto_8
    move/from16 v16, v5

    move-object v12, v8

    move-object/from16 v8, p0

    goto/16 :goto_1d

    :cond_6
    move v2, v13

    move-object/from16 v18, v14

    move-object v8, v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_7

    invoke-virtual {v7, v8}, Lcom/google/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    :cond_7
    invoke-virtual {v7, v10, v0, v4}, Lcom/google/protobuf/UnknownFieldSchema;->l(ILcom/google/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move v0, v5

    :goto_9
    if-ge v0, v2, :cond_9

    aget v3, v18, v0

    move-object/from16 v1, p0

    move v11, v2

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move v2, v11

    goto :goto_9

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v7, v8, v4}, Lcom/google/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    return-void

    :catchall_2
    move-exception v0

    move v11, v13

    move-object/from16 v18, v14

    move-object v8, v15

    goto :goto_8

    :cond_b
    move v11, v13

    move-object/from16 v18, v14

    move-object v12, v15

    :try_start_5
    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->U(I)I

    move-result v1
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    iget-object v14, v8, Lcom/google/protobuf/MessageSchema;->l:Lcom/google/protobuf/ListFieldSchema;

    packed-switch v1, :pswitch_data_0

    if-nez v4, :cond_c

    :try_start_7
    invoke-virtual {v7, v12}, Lcom/google/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v4

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_a
    move/from16 v16, v5

    goto/16 :goto_1d

    :catch_0
    :goto_b
    move/from16 v16, v5

    move-object v1, v6

    goto/16 :goto_19

    :cond_c
    :goto_c
    invoke-virtual {v7, v10, v0, v4}, Lcom/google/protobuf/UnknownFieldSchema;->l(ILcom/google/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v1, :cond_f

    move v0, v5

    :goto_d
    if-ge v0, v11, :cond_d

    aget v3, v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v7, v12, v4}, Lcom/google/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void

    :cond_f
    :goto_e
    move/from16 v16, v5

    move-object v1, v6

    goto/16 :goto_1c

    :pswitch_0
    :try_start_8
    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v13

    invoke-interface {v0, v1, v13, v6}, Lcom/google/protobuf/Reader;->y(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v8, v12, v2, v1, v3}, Lcom/google/protobuf/MessageSchema;->T(Ljava/lang/Object;ILjava/lang/Object;I)V

    :goto_f
    move-object v15, v4

    move/from16 v16, v5

    :goto_10
    move-object v1, v6

    goto/16 :goto_18

    :pswitch_1
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->D()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto :goto_f

    :pswitch_2
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto :goto_f

    :pswitch_3
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->g()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto :goto_f

    :pswitch_4
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->K()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto :goto_f

    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->l()I

    move-result v1

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-interface {v14, v1}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v14

    if-eqz v14, :cond_10

    goto :goto_11

    :cond_10
    invoke-static {v12, v2, v1, v4, v7}, Lcom/google/protobuf/SchemaUtil;->D(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_e

    :cond_11
    :goto_11
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto :goto_f

    :pswitch_6
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_7
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->r()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_8
    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v13

    invoke-interface {v0, v1, v13, v6}, Lcom/google/protobuf/Reader;->H(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v8, v12, v2, v1, v3}, Lcom/google/protobuf/MessageSchema;->T(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto/16 :goto_f

    :pswitch_9
    invoke-virtual {v8, v13, v0, v12}, Lcom/google/protobuf/MessageSchema;->M(ILcom/google/protobuf/Reader;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_a
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_b
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_c
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->a()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_d
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_e
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->v()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_f
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->N()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_10
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_11
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v13

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v13, v14, v12, v1}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v12}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_f

    :pswitch_12
    :try_start_9
    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->p(I)Ljava/lang/Object;

    move-result-object v13
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v15, v4

    move-object v4, v13

    move/from16 v16, v5

    move-object/from16 v5, p5

    move-object v14, v6

    move-object/from16 v6, p4

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->x(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_12
    move-object v1, v14

    goto/16 :goto_18

    :catchall_4
    move-exception v0

    :goto_13
    move-object v4, v15

    goto/16 :goto_1d

    :catch_1
    :goto_14
    move-object v1, v14

    :catch_2
    :goto_15
    move-object v4, v15

    goto/16 :goto_19

    :catchall_5
    move-exception v0

    move-object v15, v4

    goto/16 :goto_a

    :catch_3
    move-object v15, v4

    goto/16 :goto_b

    :pswitch_13
    move-object v15, v4

    move/from16 v16, v5

    move-object v14, v6

    :try_start_b
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v6
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object v13, v7

    move-object/from16 v7, p5

    :try_start_c
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/MessageSchema;->K(Ljava/lang/Object;JLcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    :try_end_c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v7, v13

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object v7, v13

    goto :goto_13

    :catch_4
    move-object v7, v13

    goto :goto_14

    :catchall_7
    move-exception v0

    move-object v13, v7

    goto :goto_13

    :pswitch_14
    move-object v15, v4

    move/from16 v16, v5

    :try_start_d
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_10

    :catch_5
    move-object v1, v6

    goto :goto_15

    :pswitch_15
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->u(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_16
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->A(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_17
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->b(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_18
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface {v14, v4, v5, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->k(Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5
    :try_end_d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    move-object v13, v6

    move-object/from16 v6, p1

    :try_start_e
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->A(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4
    :try_end_e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_16
    move-object v1, v13

    goto/16 :goto_1c

    :catch_6
    move-object v1, v13

    goto/16 :goto_15

    :pswitch_19
    move-object v15, v4

    move/from16 v16, v5

    :try_start_f
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->w(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_1a
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->n(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_1b
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->C(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_1c
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->t(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_1d
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->B(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_1e
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->h(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_1f
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->j(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_20
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->I(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_21
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->M(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_22
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->c(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_23
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->u(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_24
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->A(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_25
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->b(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_26
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface {v14, v4, v5, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->k(Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5
    :try_end_f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    move-object v13, v6

    move-object/from16 v6, p1

    :try_start_10
    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/SchemaUtil;->A(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4
    :try_end_10
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_16

    :pswitch_27
    move-object v15, v4

    move/from16 v16, v5

    :try_start_11
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->w(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_28
    move-object v15, v4

    move/from16 v16, v5

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v1

    invoke-interface {v14, v1, v2, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->L(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_29
    move-object v15, v4

    move/from16 v16, v5

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v5
    :try_end_11
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v13

    move-object/from16 v4, p4

    move-object v14, v6

    move-object/from16 v6, p5

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->L(Ljava/lang/Object;ILcom/google/protobuf/Reader;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_12

    :pswitch_2a
    move-object v15, v4

    move/from16 v16, v5

    move-object v14, v6

    invoke-virtual {v8, v13, v0, v12}, Lcom/google/protobuf/MessageSchema;->N(ILcom/google/protobuf/Reader;Ljava/lang/Object;)V
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_12

    :pswitch_2b
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    :try_start_13
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->n(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_2c
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->C(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_2d
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->t(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_2e
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->B(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_2f
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->h(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_30
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->j(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_31
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->I(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_32
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v2

    invoke-interface {v14, v2, v3, v12}, Lcom/google/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/protobuf/Reader;->M(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_33
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-interface {v0, v2, v4, v1}, Lcom/google/protobuf/Reader;->y(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v8, v3, v12, v2}, Lcom/google/protobuf/MessageSchema;->S(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_34
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->D()J

    move-result-wide v13

    invoke-static {v12, v4, v5, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_35
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->m()I

    move-result v2

    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_36
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->g()J

    move-result-wide v13

    invoke-static {v12, v4, v5, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_37
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->K()I

    move-result v2

    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_38
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->l()I

    move-result v4

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->o(I)Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-interface {v5, v4}, Lcom/google/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_17

    :cond_12
    invoke-static {v12, v2, v4, v15, v7}, Lcom/google/protobuf/SchemaUtil;->D(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1c

    :cond_13
    :goto_17
    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v5

    invoke-static {v5, v6, v4, v12}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_39
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->i()I

    move-result v2

    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3a
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->r()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v5, v12, v2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3b
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object v4

    invoke-interface {v0, v2, v4, v1}, Lcom/google/protobuf/Reader;->H(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v8, v3, v12, v2}, Lcom/google/protobuf/MessageSchema;->S(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3c
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-virtual {v8, v13, v0, v12}, Lcom/google/protobuf/MessageSchema;->M(ILcom/google/protobuf/Reader;Ljava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3d
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->e()Z

    move-result v2

    invoke-static {v12, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3e
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->z()I

    move-result v2

    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3f
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->a()J

    move-result-wide v13

    invoke-static {v12, v4, v5, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_40
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->s()I

    move-result v2

    invoke-static {v4, v5, v2, v12}, Lcom/google/protobuf/UnsafeUtil;->t(JILjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_41
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->v()J

    move-result-wide v13

    invoke-static {v12, v4, v5, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_42
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->N()J

    move-result-wide v13

    invoke-static {v12, v4, v5, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->u(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_43
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v2

    invoke-static {v2, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->s(FJLjava/lang/Object;)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_44
    move-object v15, v4

    move/from16 v16, v5

    move-object v1, v6

    invoke-static {v13}, Lcom/google/protobuf/MessageSchema;->D(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v13

    invoke-static {v4, v5, v12, v13, v14}, Lcom/google/protobuf/UnsafeUtil;->r(JLjava/lang/Object;D)V

    invoke-virtual {v8, v3, v12}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V
    :try_end_13
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :goto_18
    move-object v4, v15

    goto :goto_1c

    :goto_19
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_14

    invoke-virtual {v7, v12}, Lcom/google/protobuf/UnknownFieldSchema;->f(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v2

    move-object v4, v2

    goto :goto_1a

    :catchall_8
    move-exception v0

    goto :goto_1d

    :cond_14
    :goto_1a
    invoke-virtual {v7, v10, v0, v4}, Lcom/google/protobuf/UnknownFieldSchema;->l(ILcom/google/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    if-nez v2, :cond_17

    move/from16 v0, v16

    :goto_1b
    if-ge v0, v11, :cond_15

    aget v3, v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v7, v12, v4}, Lcom/google/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    :cond_17
    :goto_1c
    move-object v6, v1

    move v13, v11

    move-object v15, v12

    move/from16 v5, v16

    move-object/from16 v14, v18

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    goto/16 :goto_2

    :catchall_a
    move-exception v0

    move/from16 v16, v5

    move v11, v13

    move-object/from16 v18, v14

    move-object v12, v15

    move-object v15, v4

    :goto_1d
    move/from16 v9, v16

    :goto_1e
    if-ge v9, v11, :cond_18

    aget v3, v18, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/MessageSchema;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_18
    if-eqz v4, :cond_19

    invoke-virtual {v7, v12, v4}, Lcom/google/protobuf/UnknownFieldSchema;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
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

.method public final x(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Lcom/google/protobuf/UnsafeUtil;->c:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->m(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->o:Lcom/google/protobuf/MapFieldSchema;

    if-nez p2, :cond_0

    invoke-interface {p0}, Lcom/google/protobuf/MapFieldSchema;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/MapFieldSchema;->h(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/MapFieldSchema;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/google/protobuf/MapFieldSchema;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    invoke-static {v0, v1, p1, v2}, Lcom/google/protobuf/UnsafeUtil;->v(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    invoke-interface {p0, p3}, Lcom/google/protobuf/MapFieldSchema;->a(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object p0

    invoke-interface {p5, p1, p0, p4}, Lcom/google/protobuf/Reader;->p(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final y(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->s(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/MessageSchema;->P(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

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

.method public final z(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/MessageSchema;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->V(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/MessageSchema;->q(I)Lcom/google/protobuf/Schema;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/MessageSchema;->Q(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Lcom/google/protobuf/Schema;->d(Ljava/lang/Object;Ljava/lang/Object;)V

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
