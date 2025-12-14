.class public final Landroidx/datastore/preferences/protobuf/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/h0;


# static fields
.field public static final o:[I

.field public static final p:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/datastore/preferences/protobuf/a;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Landroidx/datastore/preferences/protobuf/Z;

.field public final l:Landroidx/datastore/preferences/protobuf/L;

.field public final m:Landroidx/datastore/preferences/protobuf/p0;

.field public final n:Landroidx/datastore/preferences/protobuf/T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/X;->o:[I

    invoke-static {}, Landroidx/datastore/preferences/protobuf/x0;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/X;->p:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;Z[IIILandroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/X;->b:[Ljava/lang/Object;

    iput p3, p0, Landroidx/datastore/preferences/protobuf/X;->c:I

    iput p4, p0, Landroidx/datastore/preferences/protobuf/X;->d:I

    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/A;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/X;->f:Z

    iput-boolean p6, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    iput-object p7, p0, Landroidx/datastore/preferences/protobuf/X;->h:[I

    iput p8, p0, Landroidx/datastore/preferences/protobuf/X;->i:I

    iput p9, p0, Landroidx/datastore/preferences/protobuf/X;->j:I

    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/X;->k:Landroidx/datastore/preferences/protobuf/Z;

    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/X;->e:Landroidx/datastore/preferences/protobuf/a;

    iput-object p14, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    return-void
.end method

.method public static A(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static B(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static K(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/O;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/k;->c0(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    :goto_0
    return-void
.end method

.method public static s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v0, p1, p2, p0}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static x(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;
    .locals 1

    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/g0;

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Landroidx/datastore/preferences/protobuf/X;->y(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static y(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;
    .locals 35

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/g0;->d()Landroidx/datastore/preferences/protobuf/d0;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/d0;->PROTO3:Landroidx/datastore/preferences/protobuf/d0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/g0;->c()Ljava/lang/String;

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

    sget-object v8, Landroidx/datastore/preferences/protobuf/X;->o:[I

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
    sget-object v5, Landroidx/datastore/preferences/protobuf/X;->p:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/g0;->b()[Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/g0;->a()Landroidx/datastore/preferences/protobuf/a;

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

    invoke-static {v3, v2}, Landroidx/datastore/preferences/protobuf/X;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v3, v10}, Landroidx/datastore/preferences/protobuf/X;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v3, v10}, Landroidx/datastore/preferences/protobuf/X;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v3, v1}, Landroidx/datastore/preferences/protobuf/X;->H(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    new-instance v0, Landroidx/datastore/preferences/protobuf/X;

    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/g0;->a()Landroidx/datastore/preferences/protobuf/a;

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

    invoke-direct/range {v4 .. v18}, Landroidx/datastore/preferences/protobuf/X;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;Z[IIILandroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)V

    return-object v0
.end method

.method public static z(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final C(I)I
    .locals 6

    iget v0, p0, Landroidx/datastore/preferences/protobuf/X;->c:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/X;->d:I

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

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

.method public final D(Ljava/lang/Object;JLN/h;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    invoke-virtual {p0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p4, LN/h;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    :cond_0
    invoke-virtual {p4, p5, p6}, LN/h;->y(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, LN/h;->e:Ljava/lang/Object;

    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p4, LN/h;->d:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p4, LN/h;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0
.end method

.method public final E(Ljava/lang/Object;ILN/h;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p3, LN/h;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-virtual {p3, p4, p5}, LN/h;->G(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p3, LN/h;->e:Ljava/lang/Object;

    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p3, LN/h;->d:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/h;->z()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p3, LN/h;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/F;->b()Landroidx/datastore/preferences/protobuf/E;

    move-result-object p0

    throw p0
.end method

.method public final F(Ljava/lang/Object;ILN/h;)V
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

    invoke-static {v0, v1, p1, p0}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/X;->f:Z

    if-eqz p0, :cond_2

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, LN/h;->S()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-virtual {p3}, LN/h;->j()Landroidx/datastore/preferences/protobuf/g;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final G(Ljava/lang/Object;ILN/h;)V
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

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, LN/h;->V(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, LN/h;->T(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public final I(ILjava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    or-int/2addr p0, p1

    invoke-static {v0, v1, p0, p2}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    return-void
.end method

.method public final J(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p3}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    return-void
.end method

.method public final L(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final M(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    array-length v4, v3

    sget-object v5, Landroidx/datastore/preferences/protobuf/X;->p:Lsun/misc/Unsafe;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v4, :cond_4

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v10

    aget v11, v3, v8

    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v12

    iget-boolean v13, v0, Landroidx/datastore/preferences/protobuf/X;->g:Z

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
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/O;->h(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/O;->o(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->n(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/O;->m(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->l(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->d(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->p(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/O;->k(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6, v2}, Landroidx/datastore/preferences/protobuf/X;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v6, v13, v14, v1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->a(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->e(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/O;->f(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->i(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/O;->q(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v13, v14, v1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Landroidx/datastore/preferences/protobuf/O;->j(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v6, v13, v14, v1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v2, v6, v11}, Landroidx/datastore/preferences/protobuf/O;->g(FI)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v11, v8, v1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v6, v13, v14, v1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v2, v12, v13, v11}, Landroidx/datastore/preferences/protobuf/O;->c(DI)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v11, v6, v8}, Landroidx/datastore/preferences/protobuf/X;->N(Landroidx/datastore/preferences/protobuf/O;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v11

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->K(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_14
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x1

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->G(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->D(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->H(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->I(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->L(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->M(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v11, 0x1

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->F(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    :goto_4
    move v12, v11

    goto/16 :goto_5

    :pswitch_23
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->G(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v11, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto :goto_4

    :pswitch_28
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2}, Landroidx/datastore/preferences/protobuf/i0;->E(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_29
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v11

    invoke-static {v6, v10, v2, v11}, Landroidx/datastore/preferences/protobuf/i0;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2}, Landroidx/datastore/preferences/protobuf/i0;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->D(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->H(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->I(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->L(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->M(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v12, 0x0

    aget v6, v3, v8

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v6, v10, v2, v12}, Landroidx/datastore/preferences/protobuf/i0;->F(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/O;->h(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/O;->o(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->n(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/O;->m(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->l(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->d(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->p(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v10

    invoke-virtual {v2, v11, v6, v10}, Landroidx/datastore/preferences/protobuf/O;->k(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v11, v6, v2}, Landroidx/datastore/preferences/protobuf/X;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    goto :goto_5

    :pswitch_3d
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    sget-object v6, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v6, v13, v14, v1}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->a(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->e(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/O;->f(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v11, v6}, Landroidx/datastore/preferences/protobuf/O;->i(II)V

    goto :goto_5

    :pswitch_41
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/O;->q(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-virtual {v2, v11, v13, v14}, Landroidx/datastore/preferences/protobuf/O;->j(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    sget-object v6, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v6, v13, v14, v1}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-virtual {v2, v6, v11}, Landroidx/datastore/preferences/protobuf/O;->g(FI)V

    goto :goto_5

    :pswitch_44
    const/4 v12, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_3

    sget-object v6, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v6, v13, v14, v1}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide v13

    invoke-virtual {v2, v13, v14, v11}, Landroidx/datastore/preferences/protobuf/O;->c(DI)V

    :cond_3
    :goto_5
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/o0;->d(Landroidx/datastore/preferences/protobuf/O;)V

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

.method public final N(Landroidx/datastore/preferences/protobuf/O;ILjava/lang/Object;I)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p3, :cond_6

    move/from16 v3, p4

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/X;->m(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroidx/datastore/preferences/protobuf/Q;

    iget-object v0, v3, Landroidx/datastore/preferences/protobuf/Q;->a:Landroidx/datastore/preferences/protobuf/P;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/datastore/preferences/protobuf/S;

    move-object/from16 v4, p1

    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/O;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/S;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move/from16 v6, p2

    invoke-virtual {v4, v6, v2}, Landroidx/datastore/preferences/protobuf/k;->e0(II)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    sget v9, Landroidx/datastore/preferences/protobuf/r;->c:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v9

    sget-object v10, Landroidx/datastore/preferences/protobuf/F0;->GROUP:Landroidx/datastore/preferences/protobuf/F0;

    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/P;->a:Landroidx/datastore/preferences/protobuf/F0;

    if-ne v11, v10, :cond_0

    mul-int/2addr v9, v2

    :cond_0
    sget-object v12, Landroidx/datastore/preferences/protobuf/q;->b:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v12, v13

    const/16 v14, 0x3f

    const-string v15, "There is no way to get here, but the compiler thinks otherwise."

    const/16 v16, 0x8

    const/16 v17, 0x4

    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->C(I)I

    move-result v7

    goto/16 :goto_4

    :pswitch_1
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    shl-long v20, v18, v1

    shr-long v18, v18, v14

    xor-long v18, v20, v18

    invoke-static/range {v18 .. v19}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v7

    goto/16 :goto_4

    :pswitch_2
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-int/lit8 v13, v7, 0x1

    shr-int/lit8 v7, v7, 0x1f

    xor-int/2addr v7, v13

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v7

    goto/16 :goto_4

    :pswitch_3
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    move/from16 v7, v16

    goto/16 :goto_4

    :pswitch_4
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move/from16 v7, v17

    goto/16 :goto_4

    :pswitch_5
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v7

    goto/16 :goto_4

    :pswitch_6
    instance-of v13, v7, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v13, :cond_1

    check-cast v7, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->u(Landroidx/datastore/preferences/protobuf/g;)I

    move-result v7

    goto/16 :goto_4

    :cond_1
    check-cast v7, [B

    array-length v7, v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v13

    :goto_3
    add-int/2addr v7, v13

    goto/16 :goto_4

    :pswitch_7
    instance-of v13, v7, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v13, :cond_2

    check-cast v7, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->u(Landroidx/datastore/preferences/protobuf/g;)I

    move-result v7

    goto :goto_4

    :cond_2
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->J(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :pswitch_8
    check-cast v7, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/a;->a()I

    move-result v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v13

    goto :goto_3

    :pswitch_9
    check-cast v7, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/a;->a()I

    move-result v7

    goto :goto_4

    :pswitch_a
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v7, v1

    goto :goto_4

    :pswitch_b
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :pswitch_c
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :pswitch_d
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->C(I)I

    move-result v7

    goto :goto_4

    :pswitch_e
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v7

    goto :goto_4

    :pswitch_f
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v7

    goto :goto_4

    :pswitch_10
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_2

    :pswitch_11
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :goto_4
    add-int/2addr v7, v9

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v9

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/P;->b:Landroidx/datastore/preferences/protobuf/F0;

    if-ne v13, v10, :cond_3

    mul-int/2addr v9, v2

    :cond_3
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v12, v10

    packed-switch v10, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->C(I)I

    move-result v16

    goto/16 :goto_7

    :pswitch_13
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    shl-long v17, v15, v1

    shr-long v14, v15, v14

    xor-long v14, v17, v14

    invoke-static {v14, v15}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v16

    goto/16 :goto_7

    :pswitch_14
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shl-int/lit8 v10, v8, 0x1

    shr-int/lit8 v8, v8, 0x1f

    xor-int/2addr v8, v10

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v16

    goto/16 :goto_7

    :pswitch_15
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :pswitch_16
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    move/from16 v16, v17

    goto/16 :goto_7

    :pswitch_17
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v16

    goto/16 :goto_7

    :pswitch_18
    instance-of v10, v8, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v10, :cond_4

    check-cast v8, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->u(Landroidx/datastore/preferences/protobuf/g;)I

    move-result v16

    goto/16 :goto_7

    :cond_4
    check-cast v8, [B

    array-length v8, v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v10

    :goto_6
    add-int v16, v10, v8

    goto :goto_7

    :pswitch_19
    instance-of v10, v8, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v10, :cond_5

    check-cast v8, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->u(Landroidx/datastore/preferences/protobuf/g;)I

    move-result v16

    goto :goto_7

    :cond_5
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->J(Ljava/lang/String;)I

    move-result v16

    goto :goto_7

    :pswitch_1a
    check-cast v8, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/a;->a()I

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result v10

    goto :goto_6

    :pswitch_1b
    check-cast v8, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/a;->a()I

    move-result v16

    goto :goto_7

    :pswitch_1c
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v1

    goto :goto_7

    :pswitch_1d
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :pswitch_1e
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :pswitch_1f
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->C(I)I

    move-result v16

    goto :goto_7

    :pswitch_20
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v16

    goto :goto_7

    :pswitch_21
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result v16

    goto :goto_7

    :pswitch_22
    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :pswitch_23
    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    add-int v16, v16, v9

    add-int v7, v16, v7

    invoke-virtual {v4, v7}, Landroidx/datastore/preferences/protobuf/k;->g0(I)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v11, v1, v7}, Landroidx/datastore/preferences/protobuf/r;->b(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/F0;ILjava/lang/Object;)V

    invoke-static {v4, v13, v2, v5}, Landroidx/datastore/preferences/protobuf/r;->b(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/F0;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/X;->k:Landroidx/datastore/preferences/protobuf/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->e:Landroidx/datastore/preferences/protobuf/a;

    check-cast p0, Landroidx/datastore/preferences/protobuf/A;

    sget-object v0, Landroidx/datastore/preferences/protobuf/z;->NEW_MUTABLE_INSTANCE:Landroidx/datastore/preferences/protobuf/z;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/A;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Landroidx/datastore/preferences/protobuf/X;->i:I

    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/X;->h:[I

    const/4 v2, 0x0

    iget v3, p0, Landroidx/datastore/preferences/protobuf/X;->j:I

    if-ge v0, v3, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v1

    const v3, 0xfffff

    and-int/2addr v1, v3

    int-to-long v3, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v3, v4, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    check-cast v5, Landroidx/datastore/preferences/protobuf/S;

    iput-boolean v2, v5, Landroidx/datastore/preferences/protobuf/S;->a:Z

    invoke-static {v3, v4, p1, v1}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_2
    if-ge v3, v0, :cond_2

    aget v4, v1, v3

    int-to-long v4, v4

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    invoke-virtual {v6, v4, v5, p1}, Landroidx/datastore/preferences/protobuf/L;->a(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    iput-boolean v2, p0, Landroidx/datastore/preferences/protobuf/o0;->e:Z

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Landroidx/datastore/preferences/protobuf/X;->i:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_12

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/X;->h:[I

    aget v4, v4, v2

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget v7, v6, v4

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v8

    const v9, 0xfffff

    iget-boolean v10, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    if-nez v10, :cond_0

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    and-int v11, v6, v9

    ushr-int/lit8 v6, v6, 0x14

    shl-int v6, v5, v6

    if-eq v11, v0, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/X;->p:Lsun/misc/Unsafe;

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

    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

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
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_e

    const/16 v12, 0x11

    if-eq v11, v12, :cond_e

    const/16 v5, 0x1b

    if-eq v11, v5, :cond_b

    const/16 v5, 0x3c

    if-eq v11, v5, :cond_a

    const/16 v5, 0x44

    if-eq v11, v5, :cond_a

    const/16 v5, 0x31

    if-eq v11, v5, :cond_b

    const/16 v5, 0x32

    if-eq v11, v5, :cond_5

    goto/16 :goto_5

    :cond_5
    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/S;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/X;->m(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/Q;

    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/Q;->a:Landroidx/datastore/preferences/protobuf/P;

    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/P;->b:Landroidx/datastore/preferences/protobuf/F0;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/F0;->a()Landroidx/datastore/preferences/protobuf/G0;

    move-result-object v4

    sget-object v6, Landroidx/datastore/preferences/protobuf/G0;->MESSAGE:Landroidx/datastore/preferences/protobuf/G0;

    if-eq v4, v6, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    sget-object v5, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/e0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v5

    :cond_9
    invoke-interface {v5, v6}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    return v1

    :cond_a
    invoke-virtual {p0, v7, v4, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_b
    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    move v6, v1

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_11

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    return v1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_e
    if-eqz v10, :cond_f

    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v5

    goto :goto_4

    :cond_f
    and-int/2addr v6, v3

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    move v5, v1

    :goto_4
    if-eqz v5, :cond_11

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    and-int v5, v8, v9

    int-to-long v5, v5

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_11
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_12
    return v5
.end method

.method public final d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/datastore/preferences/protobuf/H0;->ASCENDING:Landroidx/datastore/preferences/protobuf/H0;

    sget-object v1, Landroidx/datastore/preferences/protobuf/H0;->DESCENDING:Landroidx/datastore/preferences/protobuf/H0;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    const v3, 0xfffff

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    if-ne v0, v1, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/o0;->d(Landroidx/datastore/preferences/protobuf/O;)V

    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v1

    aget v6, v2, v0

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/O;->h(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->o(IJ)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->n(II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->m(IJ)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->l(II)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->d(II)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->p(II)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/O;->k(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/X;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->a(IZ)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->e(II)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->f(IJ)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->i(II)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->q(IJ)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->j(IJ)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1, v6}, Landroidx/datastore/preferences/protobuf/O;->g(FI)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v6, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/datastore/preferences/protobuf/O;->c(DI)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v6, v1, v0}, Landroidx/datastore/preferences/protobuf/X;->N(Landroidx/datastore/preferences/protobuf/O;ILjava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_13
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v6, v1, p2, v7}, Landroidx/datastore/preferences/protobuf/i0;->K(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_1

    :pswitch_14
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_15
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_16
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_17
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_18
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->G(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_19
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1a
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->D(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1b
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->H(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1c
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->I(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1d
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->L(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1e
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_1f
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->M(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_20
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_21
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->F(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_22
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_23
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_24
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_25
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_26
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->G(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_27
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_28
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/i0;->E(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_29
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v6, v1, p2, v7}, Landroidx/datastore/preferences/protobuf/i0;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_1

    :pswitch_2a
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/i0;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_2b
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->D(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2c
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->H(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2d
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->I(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2e
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->L(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_2f
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_30
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->M(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_31
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_32
    aget v6, v2, v0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v6, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->F(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/O;->h(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->o(IJ)V

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->n(II)V

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->m(IJ)V

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->l(II)V

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->d(II)V

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->p(II)V

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-virtual {p2, v6, v1, v7}, Landroidx/datastore/preferences/protobuf/O;->k(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1, p2}, Landroidx/datastore/preferences/protobuf/X;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->a(IZ)V

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->e(II)V

    goto :goto_1

    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->f(IJ)V

    goto :goto_1

    :pswitch_40
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-virtual {p2, v6, v1}, Landroidx/datastore/preferences/protobuf/O;->i(II)V

    goto :goto_1

    :pswitch_41
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->q(IJ)V

    goto :goto_1

    :pswitch_42
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->j(IJ)V

    goto :goto_1

    :pswitch_43
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v1

    invoke-virtual {p2, v1, v6}, Landroidx/datastore/preferences/protobuf/O;->g(FI)V

    goto :goto_1

    :pswitch_44
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    and-int/2addr v1, v3

    int-to-long v7, v1

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide v7

    invoke-virtual {p2, v7, v8, v6}, Landroidx/datastore/preferences/protobuf/O;->c(DI)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x3

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    if-eqz v0, :cond_4

    array-length v0, v2

    move v1, v5

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v7

    aget v8, v2, v1

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v9

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_45
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v9

    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/O;->h(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_46
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->o(IJ)V

    goto/16 :goto_3

    :pswitch_47
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->n(II)V

    goto/16 :goto_3

    :pswitch_48
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->m(IJ)V

    goto/16 :goto_3

    :pswitch_49
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->l(II)V

    goto/16 :goto_3

    :pswitch_4a
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->d(II)V

    goto/16 :goto_3

    :pswitch_4b
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->p(II)V

    goto/16 :goto_3

    :pswitch_4c
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_3

    :pswitch_4d
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v9

    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/O;->k(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_4e
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/X;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_4f
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->a(IZ)V

    goto/16 :goto_3

    :pswitch_50
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->e(II)V

    goto/16 :goto_3

    :pswitch_51
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->f(IJ)V

    goto/16 :goto_3

    :pswitch_52
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->i(II)V

    goto/16 :goto_3

    :pswitch_53
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->q(IJ)V

    goto/16 :goto_3

    :pswitch_54
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->j(IJ)V

    goto/16 :goto_3

    :pswitch_55
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->g(FI)V

    goto/16 :goto_3

    :pswitch_56
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/O;->c(DI)V

    goto/16 :goto_3

    :pswitch_57
    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, p2, v8, v7, v1}, Landroidx/datastore/preferences/protobuf/X;->N(Landroidx/datastore/preferences/protobuf/O;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_58
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v9

    invoke-static {v8, v7, p2, v9}, Landroidx/datastore/preferences/protobuf/i0;->K(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_59
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5a
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5b
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5c
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5d
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->G(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5e
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_5f
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->D(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_60
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->H(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_61
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->I(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_62
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->L(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_63
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_64
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->M(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_65
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_66
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v4}, Landroidx/datastore/preferences/protobuf/i0;->F(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_67
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_68
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_69
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6a
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6b
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->G(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6c
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_6d
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/i0;->E(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_6e
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v9

    invoke-static {v8, v7, p2, v9}, Landroidx/datastore/preferences/protobuf/i0;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_6f
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/i0;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_70
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->D(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_71
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->H(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_72
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->I(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_73
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->L(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_74
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_75
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->M(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_76
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_77
    aget v8, v2, v1

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/i0;->F(ILjava/util/List;Landroidx/datastore/preferences/protobuf/O;Z)V

    goto/16 :goto_3

    :pswitch_78
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v9

    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/O;->h(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_79
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->o(IJ)V

    goto/16 :goto_3

    :pswitch_7a
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->n(II)V

    goto/16 :goto_3

    :pswitch_7b
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->m(IJ)V

    goto/16 :goto_3

    :pswitch_7c
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->l(II)V

    goto/16 :goto_3

    :pswitch_7d
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->d(II)V

    goto/16 :goto_3

    :pswitch_7e
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->p(II)V

    goto/16 :goto_3

    :pswitch_7f
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->b(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_3

    :pswitch_80
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v9

    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/O;->k(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)V

    goto/16 :goto_3

    :pswitch_81
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/X;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    goto/16 :goto_3

    :pswitch_82
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->a(IZ)V

    goto/16 :goto_3

    :pswitch_83
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->e(II)V

    goto :goto_3

    :pswitch_84
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->f(IJ)V

    goto :goto_3

    :pswitch_85
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/O;->i(II)V

    goto :goto_3

    :pswitch_86
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->q(IJ)V

    goto :goto_3

    :pswitch_87
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {p2, v8, v9, v10}, Landroidx/datastore/preferences/protobuf/O;->j(IJ)V

    goto :goto_3

    :pswitch_88
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v7

    invoke-virtual {p2, v7, v8}, Landroidx/datastore/preferences/protobuf/O;->g(FI)V

    goto :goto_3

    :pswitch_89
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    and-int/2addr v7, v3

    int-to-long v9, v7

    sget-object v7, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v7, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/O;->c(DI)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/o0;->d(Landroidx/datastore/preferences/protobuf/O;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/X;->M(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V

    :cond_5
    :goto_4
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

.method public final e(Landroidx/datastore/preferences/protobuf/a;)I
    .locals 1

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/X;->p(Landroidx/datastore/preferences/protobuf/a;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/X;->o(Landroidx/datastore/preferences/protobuf/a;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final f(Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/X;->t(Landroidx/datastore/preferences/protobuf/p0;Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V

    return-void
.end method

.method public final g(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v9, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/i0;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/X;->j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

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
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    check-cast p2, Landroidx/datastore/preferences/protobuf/A;

    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/o0;->equals(Ljava/lang/Object;)Z

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

.method public final h(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v5, v3

    aget v1, v1, v0

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/X;->w(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v2, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p1, v2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/X;->w(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v2, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p1, v2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->a:Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/S;

    move-result-object v1

    invoke-static {v5, v6, p1, v1}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    invoke-virtual {v1, p1, p2, v5, v6}, Landroidx/datastore/preferences/protobuf/L;->b(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/X;->v(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v6, p1, v1}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/X;->v(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v6, p1, v1}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/w0;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v5, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v5, v6, v1, v2}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v1, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, v2, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/w0;->n(FJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/w0;->m(JLjava/lang/Object;D)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/i0;->B(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V

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

.method public final i(Landroidx/datastore/preferences/protobuf/A;)I
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/D;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

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

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/D;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/D;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/o0;->hashCode()I

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

.method public final j(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

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

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget p3, p3, p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p3, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/X;->l(I)V

    return-void
.end method

.method public final l(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, LV0/c;->x(IIII)I

    move-result p1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->b:[Ljava/lang/Object;

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

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final n(I)Landroidx/datastore/preferences/protobuf/h0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/h0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/e0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final o(Landroidx/datastore/preferences/protobuf/a;)I
    .locals 14

    sget-object v0, Landroidx/datastore/preferences/protobuf/X;->p:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    array-length v7, v6

    if-ge v3, v7, :cond_5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v7

    aget v8, v6, v3

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

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
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->A(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v6

    :goto_2
    add-int/2addr v4, v6

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->H(IJ)I

    move-result v6

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->G(II)I

    move-result v6

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->F(I)I

    move-result v6

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->E(I)I

    move-result v6

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->w(II)I

    move-result v6

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v6

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v6

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i0;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v6

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v7, :cond_2

    check-cast v6, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v6

    :goto_3
    add-int/2addr v6, v4

    move v4, v6

    goto/16 :goto_4

    :cond_2
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->I(ILjava/lang/String;)I

    move-result v6

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->x(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->y(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->B(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v10, v11, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->D(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->z(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, v8, v3, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->v(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->m(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v9, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/T;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_13
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i0;->j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->t(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->r(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_17
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_18
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->e(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_19
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->w(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1a
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->b(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1b
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1c
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1d
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->l(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1e
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->y(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_1f
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_20
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->g(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_21
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/i0;->i(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v7

    invoke-static {v6, v7, v6, v4}, LV0/c;->a(IIII)I

    move-result v4

    goto/16 :goto_4

    :pswitch_22
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->s(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->q(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->h(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->f(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->d(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->v(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->c(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i0;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->u(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->a(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->f(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->h(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->k(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->x(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_30
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->m(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->f(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i0;->h(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_33
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->A(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_34
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->H(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_35
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->G(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_36
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->F(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_37
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->E(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_38
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->w(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_39
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3a
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3b
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i0;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3c
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v7, :cond_3

    check-cast v6, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v6

    goto/16 :goto_3

    :cond_3
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->I(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3

    :pswitch_3d
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->s(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3e
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->x(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3f
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->y(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_40
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->B(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_41
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_42
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->D(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_43
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->z(I)I

    move-result v6

    goto/16 :goto_2

    :pswitch_44
    and-int/2addr v6, v5

    if-eqz v6, :cond_4

    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->v(I)I

    move-result v6

    goto/16 :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/o0;->a()I

    move-result p0

    add-int/2addr p0, v4

    return p0

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

.method public final p(Landroidx/datastore/preferences/protobuf/a;)I
    .locals 9

    sget-object v0, Landroidx/datastore/preferences/protobuf/X;->p:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    array-length v4, v3

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v4

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v5

    aget v6, v3, v1

    const v7, 0xfffff

    and-int/2addr v4, v7

    int-to-long v7, v4

    sget-object v4, Landroidx/datastore/preferences/protobuf/u;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/u;->a()I

    move-result v4

    if-lt v5, v4, :cond_0

    sget-object v4, Landroidx/datastore/preferences/protobuf/u;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/u;->a()I

    move-result v4

    if-gt v5, v4, :cond_0

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    :cond_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->A(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v3

    :goto_1
    add-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->H(IJ)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->G(II)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->F(I)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->E(I)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->w(II)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/i0;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v3

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v4, :cond_1

    check-cast v3, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->I(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->s(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->x(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->y(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->A(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->B(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/X;->B(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->D(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->z(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v6, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->v(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_12
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->m(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/T;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/i0;->j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->r(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->w(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->l(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    invoke-static {v3, v4, v3, v2}, LV0/c;->a(IIII)I

    move-result v2

    goto/16 :goto_2

    :pswitch_22
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->s(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->q(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->v(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/i0;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->k(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->x(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->m(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/X;->s(Landroidx/datastore/preferences/protobuf/a;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/i0;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->A(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->j(Landroidx/datastore/preferences/protobuf/a;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->H(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->i(Landroidx/datastore/preferences/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->G(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->F(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->E(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->i(Landroidx/datastore/preferences/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->w(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->i(Landroidx/datastore/preferences/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/i0;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/h0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v3

    goto/16 :goto_1

    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->I(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->s(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->x(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->y(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->i(Landroidx/datastore/preferences/protobuf/a;J)I

    move-result v3

    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/k;->B(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->j(Landroidx/datastore/preferences/protobuf/a;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, v7, v8}, Landroidx/datastore/preferences/protobuf/x0;->j(Landroidx/datastore/preferences/protobuf/a;J)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->D(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->z(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/k;->v(I)I

    move-result v3

    goto/16 :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->m:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/o0;->a()I

    move-result p0

    add-int/2addr p0, v2

    return p0

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

.method public final q(ILjava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/X;->g:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result p0

    const-wide/16 v4, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :pswitch_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :pswitch_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    :pswitch_5
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :pswitch_6
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/g;->c:Landroidx/datastore/preferences/protobuf/g;

    sget-object p1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :pswitch_8
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    return v2

    :pswitch_9
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_8
    instance-of p1, p0, Landroidx/datastore/preferences/protobuf/g;

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/datastore/preferences/protobuf/g;->c:Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    move v2, v3

    :cond_a
    return v2

    :pswitch_c
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_b

    move v2, v3

    :cond_b
    return v2

    :pswitch_d
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    move v2, v3

    :cond_c
    return v2

    :pswitch_e
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_d

    move v2, v3

    :cond_d
    return v2

    :pswitch_f
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_e

    move v2, v3

    :cond_e
    return v2

    :pswitch_10
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->f(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_f

    move v2, v3

    :cond_f
    return v2

    :pswitch_11
    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->e(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_10

    move v2, v3

    :cond_10
    return v2

    :cond_11
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    shl-int p1, v3, p1

    and-int/2addr p0, v1

    int-to-long v0, p0

    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

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

.method public final r(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Landroidx/datastore/preferences/protobuf/p0;Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    iget-object v12, v8, Landroidx/datastore/preferences/protobuf/X;->h:[I

    iget v13, v8, Landroidx/datastore/preferences/protobuf/X;->j:I

    iget v14, v8, Landroidx/datastore/preferences/protobuf/X;->i:I

    const/4 v1, 0x0

    move-object v15, v1

    :goto_0
    :try_start_0
    invoke-virtual/range {p3 .. p3}, LN/h;->b()I

    move-result v1

    invoke-virtual {v8, v1}, Landroidx/datastore/preferences/protobuf/X;->C(I)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v6, Landroidx/datastore/preferences/protobuf/o0;->f:Landroidx/datastore/preferences/protobuf/o0;

    if-gez v7, :cond_8

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    :goto_1
    if-ge v14, v13, :cond_0

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v15}, Landroidx/datastore/preferences/protobuf/X;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    if-eqz v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v10

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iput-object v15, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v15, :cond_4

    move-object v1, v10

    check-cast v1, Landroidx/datastore/preferences/protobuf/A;

    iget-object v2, v1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    if-ne v2, v6, :cond_3

    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->b()Landroidx/datastore/preferences/protobuf/o0;

    move-result-object v2

    iput-object v2, v1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_3
    move-object v15, v2

    goto :goto_3

    :goto_2
    move/from16 v16, v14

    goto/16 :goto_c

    :cond_4
    :goto_3
    invoke-static {v15, v0}, Landroidx/datastore/preferences/protobuf/p0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_4
    if-ge v14, v13, :cond_6

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v15}, Landroidx/datastore/preferences/protobuf/X;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_6
    if-eqz v15, :cond_7

    move-object v0, v10

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iput-object v15, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_7
    return-void

    :cond_8
    :try_start_2
    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->K(I)I

    move-result v2
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, v8, Landroidx/datastore/preferences/protobuf/X;->l:Landroidx/datastore/preferences/protobuf/L;

    packed-switch v2, :pswitch_data_0

    if-nez v15, :cond_9

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/p0;->b()Landroidx/datastore/preferences/protobuf/o0;

    move-result-object v15

    goto :goto_5

    :catch_0
    move/from16 v16, v14

    move-object v14, v6

    goto/16 :goto_9

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v0}, Landroidx/datastore/preferences/protobuf/p0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_b

    :goto_6
    if-ge v14, v13, :cond_a

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v15}, Landroidx/datastore/preferences/protobuf/X;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    move-object v0, v10

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iput-object v15, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    return-void

    :pswitch_0
    :try_start_5
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-virtual {v0, v4, v11}, LN/h;->A(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    :cond_b
    :goto_7
    move/from16 v16, v14

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_2

    :pswitch_1
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->Q()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_7

    :pswitch_2
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->O()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_7

    :pswitch_3
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->M()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->K()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    invoke-virtual/range {p3 .. p3}, LN/h;->p()I

    move-result v2

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->l(I)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v10, v2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_7

    :pswitch_6
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->X()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_7

    :pswitch_7
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->j()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_8
    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v4

    invoke-static {v4, v5, v10}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-virtual {v0, v4, v11}, LN/h;->I(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/datastore/preferences/protobuf/D;->c(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/A;

    move-result-object v2

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v3

    invoke-static {v3, v4, v10, v2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    invoke-virtual {v0, v4, v11}, LN/h;->I(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    :goto_8
    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_9
    invoke-virtual {v8, v10, v3, v0}, Landroidx/datastore/preferences/protobuf/X;->F(Ljava/lang/Object;ILN/h;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_a
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->h()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_b
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->s()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_c
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->C()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_e
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->Z()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_f
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->E()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_10
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->w()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_11
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->n()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3, v10, v4}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->m(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v7

    move-object/from16 v5, p4

    move-object v7, v6

    move-object/from16 v6, p3

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/X;->u(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n;LN/h;)V
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    :catch_1
    move/from16 v16, v14

    move-object v14, v7

    goto/16 :goto_9

    :pswitch_13
    :try_start_7
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v3

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v7
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v16, v14

    move-object v14, v6

    move-object v6, v7

    move-object/from16 v7, p4

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/X;->D(Ljava/lang/Object;JLN/h;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)V

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :pswitch_14
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->R(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_15
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->P(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_16
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->N(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_17
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->L(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_18
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, LN/h;->q(Ljava/util/List;)V

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->l(I)V

    invoke-static {v1, v2, v15, v9}, Landroidx/datastore/preferences/protobuf/i0;->z(ILjava/util/List;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/p0;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_19
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->Y(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1a
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->i(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1b
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->t(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1c
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->v(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1d
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->D(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1e
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->a0(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1f
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->F(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_20
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->x(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_21
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->o(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_22
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->R(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_23
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->P(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_24
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->N(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_25
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->L(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_26
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, LN/h;->q(Ljava/util/List;)V

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->l(I)V

    invoke-static {v1, v2, v15, v9}, Landroidx/datastore/preferences/protobuf/i0;->z(ILjava/util/List;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/p0;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_27
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->Y(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_28
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->m(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_29
    move/from16 v16, v14

    move-object v14, v6

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/X;->E(Ljava/lang/Object;ILN/h;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)V

    goto/16 :goto_b

    :pswitch_2a
    move/from16 v16, v14

    move-object v14, v6

    invoke-virtual {v8, v10, v3, v0}, Landroidx/datastore/preferences/protobuf/X;->G(Ljava/lang/Object;ILN/h;)V

    goto/16 :goto_b

    :pswitch_2b
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->i(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_2c
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->t(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_2d
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->v(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_2e
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->D(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_2f
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->a0(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_30
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->F(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_31
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->x(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_32
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/L;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/h;->o(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_33
    move/from16 v16, v14

    move-object v14, v6

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-static {v1, v2, v10}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, LN/h;->A(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/D;->c(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/A;

    move-result-object v1

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-static {v2, v3, v10, v1}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, LN/h;->A(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v10, v3}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_34
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->Q()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_35
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->O()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_36
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->M()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_37
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->K()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_38
    move/from16 v16, v14

    move-object v14, v6

    invoke-virtual/range {p3 .. p3}, LN/h;->p()I

    move-result v1

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->l(I)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-static {v2, v3, v1, v10}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_39
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->X()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3a
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->j()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v3

    invoke-static {v1, v2, v10, v3}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3b
    move/from16 v16, v14

    move-object v14, v6

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-static {v1, v2, v10}, Landroidx/datastore/preferences/protobuf/x0;->k(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, LN/h;->I(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/D;->c(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/A;

    move-result-object v1

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-static {v2, v3, v10, v1}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_e
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual {v8, v7}, Landroidx/datastore/preferences/protobuf/X;->n(I)Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, LN/h;->I(Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v10, v3}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3c
    move/from16 v16, v14

    move-object v14, v6

    invoke-virtual {v8, v10, v3, v0}, Landroidx/datastore/preferences/protobuf/X;->F(Ljava/lang/Object;ILN/h;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3d
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->h()Z

    move-result v3

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v10, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/w0;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3e
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->s()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3f
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->u()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_40
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->C()I

    move-result v3

    invoke-static {v1, v2, v3, v10}, Landroidx/datastore/preferences/protobuf/x0;->p(JILjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_41
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->Z()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_42
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->E()J

    move-result-wide v3

    invoke-static {v10, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/x0;->q(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_b

    :pswitch_43
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, LN/h;->w()F

    move-result v3

    sget-object v4, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v4, v3, v1, v2, v10}, Landroidx/datastore/preferences/protobuf/w0;->n(FJLjava/lang/Object;)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_b

    :pswitch_44
    move/from16 v16, v14

    move-object v14, v6

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/X;->z(I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, LN/h;->n()D

    move-result-wide v5

    sget-object v1, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/w0;->m(JLjava/lang/Object;D)V

    invoke-virtual {v8, v7, v10}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :catch_2
    :goto_9
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v15, :cond_10

    move-object v1, v10

    check-cast v1, Landroidx/datastore/preferences/protobuf/A;

    iget-object v2, v1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    if-ne v2, v14, :cond_f

    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->b()Landroidx/datastore/preferences/protobuf/o0;

    move-result-object v2

    iput-object v2, v1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_f
    move-object v15, v2

    :cond_10
    invoke-static {v15, v0}, Landroidx/datastore/preferences/protobuf/p0;->a(Ljava/lang/Object;LN/h;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez v1, :cond_13

    move/from16 v14, v16

    :goto_a
    if-ge v14, v13, :cond_11

    aget v0, v12, v14

    invoke-virtual {v8, v0, v10, v15}, Landroidx/datastore/preferences/protobuf/X;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_11
    if-eqz v15, :cond_12

    move-object v0, v10

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iput-object v15, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_12
    return-void

    :cond_13
    :goto_b
    move/from16 v14, v16

    goto/16 :goto_0

    :goto_c
    move/from16 v14, v16

    :goto_d
    if-ge v14, v13, :cond_14

    aget v1, v12, v14

    invoke-virtual {v8, v1, v10, v15}, Landroidx/datastore/preferences/protobuf/X;->k(ILjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_14
    if-eqz v15, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v10

    check-cast v1, Landroidx/datastore/preferences/protobuf/A;

    iput-object v15, v1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_15
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

.method public final u(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n;LN/h;)V
    .locals 7

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/X;->n:Landroidx/datastore/preferences/protobuf/T;

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/datastore/preferences/protobuf/S;->b:Landroidx/datastore/preferences/protobuf/S;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/S;->b()Landroidx/datastore/preferences/protobuf/S;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p2

    check-cast v2, Landroidx/datastore/preferences/protobuf/S;

    iget-boolean v2, v2, Landroidx/datastore/preferences/protobuf/S;->a:Z

    if-nez v2, :cond_1

    sget-object v2, Landroidx/datastore/preferences/protobuf/S;->b:Landroidx/datastore/preferences/protobuf/S;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/S;->b()Landroidx/datastore/preferences/protobuf/S;

    move-result-object v2

    invoke-static {v2, p2}, Landroidx/datastore/preferences/protobuf/T;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/S;

    invoke-static {v0, v1, p1, v2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/datastore/preferences/protobuf/S;

    check-cast p3, Landroidx/datastore/preferences/protobuf/Q;

    iget-object p0, p3, Landroidx/datastore/preferences/protobuf/Q;->a:Landroidx/datastore/preferences/protobuf/P;

    const/4 p1, 0x2

    invoke-virtual {p5, p1}, LN/h;->e0(I)V

    iget-object p3, p5, LN/h;->e:Ljava/lang/Object;

    check-cast p3, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/h;->A()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/h;->e(I)I

    move-result v0

    const-string v1, ""

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/P;->c:Lo1/k;

    move-object v3, v2

    :goto_1
    :try_start_0
    invoke-virtual {p5}, LN/h;->b()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_7

    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/h;->c()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_5

    if-eq v4, p1, :cond_4

    :try_start_1
    invoke-virtual {p5}, LN/h;->f0()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Landroidx/datastore/preferences/protobuf/F;

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/P;->b:Landroidx/datastore/preferences/protobuf/F0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p5, v4, v5, p4}, LN/h;->r(Landroidx/datastore/preferences/protobuf/F0;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/P;->a:Landroidx/datastore/preferences/protobuf/F0;

    const/4 v5, 0x0

    invoke-virtual {p5, v4, v5, v5}, LN/h;->r(Landroidx/datastore/preferences/protobuf/F0;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/E; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p5}, LN/h;->f0()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Landroidx/datastore/preferences/protobuf/F;

    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p2, v1, v3}, Landroidx/datastore/preferences/protobuf/S;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/h;->d(I)V

    return-void

    :goto_3
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/h;->d(I)V

    throw p0
.end method

.method public final v(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;I)V
    .locals 4

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/X;->q(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v3, p2}, Landroidx/datastore/preferences/protobuf/D;->c(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/A;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/X;->I(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final w(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;I)V
    .locals 5

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/X;->L(I)I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/X;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p3, p2}, Landroidx/datastore/preferences/protobuf/X;->r(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {v0, v2, v3, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v4, p2}, Landroidx/datastore/preferences/protobuf/D;->c(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/A;

    move-result-object p2

    invoke-static {v2, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v2, v3, p1, p2}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/X;->J(IILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
