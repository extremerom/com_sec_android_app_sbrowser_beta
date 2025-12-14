.class public final Lcom/google/android/gms/internal/clearcut/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/Y;


# static fields
.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/clearcut/w;

.field public final g:Z

.field public final h:[I

.field public final i:[I

.field public final j:[I

.field public final k:Lcom/google/android/gms/internal/clearcut/P;

.field public final l:Lcom/google/android/gms/internal/clearcut/E;

.field public final m:Lcom/google/android/gms/internal/clearcut/b0;

.field public final n:Lcom/google/android/gms/internal/clearcut/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/i0;->i()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/w;Z[I[I[ILcom/google/android/gms/internal/clearcut/P;Lcom/google/android/gms/internal/clearcut/E;Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/N;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/N;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/clearcut/N;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/clearcut/N;->e:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/clearcut/N;->g:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/clearcut/N;->h:[I

    iput-object p9, p0, Lcom/google/android/gms/internal/clearcut/N;->i:[I

    iput-object p10, p0, Lcom/google/android/gms/internal/clearcut/N;->j:[I

    iput-object p11, p0, Lcom/google/android/gms/internal/clearcut/N;->k:Lcom/google/android/gms/internal/clearcut/P;

    iput-object p12, p0, Lcom/google/android/gms/internal/clearcut/N;->l:Lcom/google/android/gms/internal/clearcut/E;

    iput-object p13, p0, Lcom/google/android/gms/internal/clearcut/N;->m:Lcom/google/android/gms/internal/clearcut/b0;

    iput-object p6, p0, Lcom/google/android/gms/internal/clearcut/N;->f:Lcom/google/android/gms/internal/clearcut/w;

    iput-object p15, p0, Lcom/google/android/gms/internal/clearcut/N;->n:Lcom/google/android/gms/internal/clearcut/K;

    return-void
.end method

.method public static A(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static B(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static h(Lcom/google/android/gms/internal/clearcut/Y;I[BIILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I
    .locals 2

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/clearcut/N;->j(Lcom/google/android/gms/internal/clearcut/Y;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/clearcut/N;->j(Lcom/google/android/gms/internal/clearcut/Y;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static i(Lcom/google/android/gms/internal/clearcut/Y;[BIIILcom/google/android/gms/internal/auth/A;)I
    .locals 8

    check-cast p0, Lcom/google/android/gms/internal/clearcut/N;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/N;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/N;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/clearcut/N;->b(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p1
.end method

.method public static j(Lcom/google/android/gms/internal/clearcut/Y;[BIILcom/google/android/gms/internal/auth/A;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/clearcut/l0;->d(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/auth/A;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/Y;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/Y;->c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/clearcut/Y;->b(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0
.end method

.method public static n(Lcom/google/android/gms/internal/clearcut/V;Lcom/google/android/gms/internal/clearcut/P;Lcom/google/android/gms/internal/clearcut/E;Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/K;)Lcom/google/android/gms/internal/clearcut/N;
    .locals 23

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/clearcut/V;

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/V;->b:Lcom/google/android/gms/internal/clearcut/W;

    iget v2, v1, Lcom/google/android/gms/internal/clearcut/W;->d:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-ne v2, v4, :cond_1

    move v13, v3

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/W;->e:I

    if-nez v2, :cond_2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/W;->g:I

    iget v6, v1, Lcom/google/android/gms/internal/clearcut/W;->h:I

    iget v7, v1, Lcom/google/android/gms/internal/clearcut/W;->k:I

    move v9, v2

    move v10, v6

    :goto_2
    shl-int/lit8 v2, v7, 0x2

    new-array v2, v2, [I

    shl-int/lit8 v6, v7, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/google/android/gms/internal/clearcut/W;->i:I

    if-lez v7, :cond_3

    new-array v7, v7, [I

    move-object v15, v7

    goto :goto_3

    :cond_3
    move-object v15, v6

    :goto_3
    iget v7, v1, Lcom/google/android/gms/internal/clearcut/W;->l:I

    if-lez v7, :cond_4

    new-array v6, v7, [I

    :cond_4
    move-object/from16 v16, v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->a()Z

    move-result v6

    if-eqz v6, :cond_16

    iget v6, v1, Lcom/google/android/gms/internal/clearcut/W;->s:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    iget v14, v1, Lcom/google/android/gms/internal/clearcut/W;->j:I

    if-ge v6, v14, :cond_6

    sub-int v14, v6, v9

    shl-int/2addr v14, v4

    if-ge v7, v14, :cond_6

    const/4 v14, 0x0

    :goto_5
    const/4 v4, 0x4

    if-ge v14, v4, :cond_5

    add-int v4, v7, v14

    const/16 v18, -0x1

    aput v18, v2, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_5
    move v5, v3

    move/from16 v21, v10

    move/from16 v20, v13

    move v13, v9

    goto/16 :goto_11

    :cond_6
    iget v4, v1, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v6, Lcom/google/android/gms/internal/clearcut/q;->zziw:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v14

    if-le v4, v14, :cond_7

    move v4, v3

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    iget-object v14, v1, Lcom/google/android/gms/internal/clearcut/W;->c:Ljava/lang/Class;

    iget-object v5, v1, Lcom/google/android/gms/internal/clearcut/W;->b:[Ljava/lang/Object;

    if-eqz v4, :cond_a

    iget v4, v1, Lcom/google/android/gms/internal/clearcut/W;->v:I

    shl-int/2addr v4, v3

    aget-object v3, v5, v4

    move/from16 v20, v13

    instance-of v13, v3, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_8

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_7

    :cond_8
    check-cast v3, Ljava/lang/String;

    invoke-static {v14, v3}, Lcom/google/android/gms/internal/clearcut/W;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v5, v4

    :goto_7
    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    move v13, v9

    move/from16 v21, v10

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/clearcut/h0;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v3, v9

    iget v9, v1, Lcom/google/android/gms/internal/clearcut/W;->v:I

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    aget-object v10, v5, v9

    move/from16 v22, v3

    instance-of v3, v10, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_9

    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_8

    :cond_9
    check-cast v10, Ljava/lang/String;

    invoke-static {v14, v10}, Lcom/google/android/gms/internal/clearcut/W;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v5, v9

    :goto_8
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/clearcut/h0;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    move v4, v3

    move/from16 v3, v22

    :goto_9
    const/4 v5, 0x0

    goto :goto_b

    :cond_a
    move/from16 v21, v10

    move/from16 v20, v13

    move v13, v9

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/W;->x:Ljava/lang/reflect/Field;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/clearcut/h0;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v3, v9

    iget v9, v1, Lcom/google/android/gms/internal/clearcut/W;->d:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_c

    iget v9, v1, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v19, Lcom/google/android/gms/internal/clearcut/q;->zzhp:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v10

    if-gt v9, v10, :cond_c

    iget v9, v1, Lcom/google/android/gms/internal/clearcut/W;->f:I

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    iget v10, v1, Lcom/google/android/gms/internal/clearcut/W;->w:I

    div-int/lit8 v10, v10, 0x20

    add-int/2addr v10, v9

    aget-object v9, v5, v10

    move/from16 v22, v3

    instance-of v3, v9, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_b

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_a

    :cond_b
    check-cast v9, Ljava/lang/String;

    invoke-static {v14, v9}, Lcom/google/android/gms/internal/clearcut/W;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v5, v10

    :goto_a
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/clearcut/h0;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, v1, Lcom/google/android/gms/internal/clearcut/W;->w:I

    rem-int/lit8 v4, v4, 0x20

    move v5, v4

    move v4, v3

    move/from16 v3, v22

    goto :goto_b

    :cond_c
    move/from16 v22, v3

    move/from16 v3, v22

    const/4 v4, 0x0

    goto :goto_9

    :goto_b
    iget v9, v1, Lcom/google/android/gms/internal/clearcut/W;->s:I

    aput v9, v2, v7

    add-int/lit8 v9, v7, 0x1

    iget v10, v1, Lcom/google/android/gms/internal/clearcut/W;->t:I

    and-int/lit16 v14, v10, 0x200

    if-eqz v14, :cond_d

    const/high16 v14, 0x20000000

    goto :goto_c

    :cond_d
    const/4 v14, 0x0

    :goto_c
    and-int/lit16 v10, v10, 0x100

    if-eqz v10, :cond_e

    const/high16 v10, 0x10000000

    goto :goto_d

    :cond_e
    const/4 v10, 0x0

    :goto_d
    or-int/2addr v10, v14

    iget v14, v1, Lcom/google/android/gms/internal/clearcut/W;->u:I

    shl-int/lit8 v22, v14, 0x14

    or-int v10, v10, v22

    or-int/2addr v3, v10

    aput v3, v2, v9

    add-int/lit8 v3, v7, 0x2

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v4, v5

    aput v4, v2, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/W;->A:Ljava/lang/Object;

    if-eqz v3, :cond_11

    div-int/lit8 v4, v7, 0x4

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    aput-object v3, v8, v4

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/W;->y:Ljava/lang/Object;

    if-eqz v3, :cond_10

    add-int/lit8 v4, v4, 0x1

    aput-object v3, v8, v4

    :cond_f
    :goto_e
    const/4 v5, 0x1

    goto :goto_f

    :cond_10
    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/W;->z:Ljava/lang/Object;

    if-eqz v3, :cond_f

    add-int/lit8 v4, v4, 0x1

    aput-object v3, v8, v4

    goto :goto_e

    :cond_11
    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/W;->y:Ljava/lang/Object;

    if-eqz v3, :cond_12

    div-int/lit8 v4, v7, 0x4

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v4, v5

    aput-object v3, v8, v4

    goto :goto_f

    :cond_12
    const/4 v5, 0x1

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/W;->z:Ljava/lang/Object;

    if-eqz v3, :cond_13

    div-int/lit8 v4, v7, 0x4

    shl-int/2addr v4, v5

    add-int/2addr v4, v5

    aput-object v3, v8, v4

    :cond_13
    :goto_f
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v14, v3, :cond_14

    add-int/lit8 v3, v11, 0x1

    aput v7, v15, v11

    move v11, v3

    goto :goto_10

    :cond_14
    const/16 v3, 0x12

    if-lt v14, v3, :cond_15

    const/16 v3, 0x31

    if-gt v14, v3, :cond_15

    add-int/lit8 v3, v12, 0x1

    aget v4, v2, v9

    const v6, 0xfffff

    and-int/2addr v4, v6

    aput v4, v16, v12

    move v12, v3

    :cond_15
    :goto_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->a()Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v1, Lcom/google/android/gms/internal/clearcut/W;->s:I

    move v6, v3

    :goto_11
    add-int/lit8 v7, v7, 0x4

    move v3, v5

    move v9, v13

    move/from16 v13, v20

    move/from16 v10, v21

    const/4 v4, 0x2

    goto/16 :goto_4

    :cond_16
    move/from16 v21, v10

    move/from16 v20, v13

    move v13, v9

    :cond_17
    new-instance v3, Lcom/google/android/gms/internal/clearcut/N;

    iget-object v12, v0, Lcom/google/android/gms/internal/clearcut/V;->a:Lcom/google/android/gms/internal/clearcut/w;

    iget v11, v1, Lcom/google/android/gms/internal/clearcut/W;->j:I

    iget-object v14, v1, Lcom/google/android/gms/internal/clearcut/W;->m:[I

    move-object v6, v3

    move-object v7, v2

    move v9, v13

    move/from16 v10, v21

    move/from16 v13, v20

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    invoke-direct/range {v6 .. v21}, Lcom/google/android/gms/internal/clearcut/N;-><init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/w;Z[I[I[ILcom/google/android/gms/internal/clearcut/P;Lcom/google/android/gms/internal/clearcut/E;Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/K;)V

    return-object v3

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/N;->k:Lcom/google/android/gms/internal/clearcut/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->f:Lcom/google/android/gms/internal/clearcut/w;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/N;->i:[I

    if-eqz v1, :cond_1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/N;->n:Lcom/google/android/gms/internal/clearcut/K;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/clearcut/J;

    iput-boolean v0, v7, Lcom/google/android/gms/internal/clearcut/J;->a:Z

    invoke-static {v4, v5, p1, v6}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/N;->j:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/N;->l:Lcom/google/android/gms/internal/clearcut/E;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/E;->a(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->m:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/w;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/a0;->d:Z

    return-void
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/clearcut/N;->g:Z

    if-eqz v0, :cond_11

    sget-object v9, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    move/from16 v0, p3

    :goto_0
    if-ge v0, v13, :cond_f

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v11}, Lcom/google/android/gms/internal/clearcut/l0;->d(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    move v10, v0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v10, v1

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/clearcut/N;->w(I)I

    move-result v8

    if-ltz v8, :cond_1

    add-int/lit8 v0, v8, 0x1

    iget-object v1, v15, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget v5, v1, v0

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v4, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v2, v0

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v4, v0, :cond_5

    const/4 v0, 0x1

    const/4 v6, 0x5

    packed-switch v4, :pswitch_data_0

    :cond_1
    move-object/from16 v21, v9

    move-object v15, v14

    move v14, v10

    goto/16 :goto_d

    :pswitch_0
    if-nez v7, :cond_1

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget-wide v0, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/l0;->h(J)J

    move-result-wide v4

    :goto_2
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    goto :goto_0

    :pswitch_1
    if-nez v7, :cond_1

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/l0;->C(I)I

    move-result v1

    :goto_3
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    :pswitch_2
    if-nez v7, :cond_1

    :goto_4
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    goto :goto_3

    :pswitch_3
    if-ne v7, v1, :cond_1

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->y([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_5
    iget-object v1, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    if-ne v7, v1, :cond_1

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lcom/google/android/gms/internal/clearcut/N;->j(Lcom/google/android/gms/internal/clearcut/Y;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_5

    :cond_2
    iget-object v4, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object v1

    goto :goto_6

    :pswitch_5
    if-ne v7, v1, :cond_1

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_3

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->t([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_5

    :cond_3
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_5

    :pswitch_6
    if-nez v7, :cond_1

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget-wide v4, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    goto :goto_7

    :cond_4
    const/4 v0, 0x0

    :goto_7
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/clearcut/i0;->g(Ljava/lang/Object;JZ)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    if-ne v7, v6, :cond_1

    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_0

    :pswitch_8
    if-ne v7, v0, :cond_1

    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_9
    add-int/lit8 v0, v10, 0x8

    goto/16 :goto_0

    :pswitch_9
    if-nez v7, :cond_1

    goto :goto_4

    :pswitch_a
    if-nez v7, :cond_1

    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget-wide v4, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    goto/16 :goto_2

    :pswitch_b
    if-ne v7, v6, :cond_1

    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/l0;->z(I[B)F

    move-result v0

    invoke-static {v0, v2, v3, v14}, Lcom/google/android/gms/internal/clearcut/i0;->b(FJLjava/lang/Object;)V

    goto :goto_8

    :pswitch_c
    if-ne v7, v0, :cond_1

    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/l0;->x(I[B)D

    move-result-wide v0

    invoke-static {v2, v3, v14, v0, v1}, Lcom/google/android/gms/internal/clearcut/i0;->d(JLjava/lang/Object;D)V

    goto :goto_9

    :cond_5
    const/16 v0, 0x1b

    if-ne v4, v0, :cond_8

    if-ne v7, v1, :cond_1

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/z;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/h;->g()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0xa

    goto :goto_a

    :cond_6
    shl-int/lit8 v1, v1, 0x1

    :goto_a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/z;->G(I)Lcom/google/android/gms/internal/clearcut/z;

    move-result-object v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_7
    move-object v5, v0

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/N;->h(Lcom/google/android/gms/internal/clearcut/Y;I[BIILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x31

    if-gt v4, v0, :cond_a

    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-object/from16 v2, p2

    move v3, v10

    move v5, v4

    move/from16 v4, p4

    move/from16 p3, v5

    move/from16 v5, v16

    move-object/from16 v21, v9

    move v15, v10

    move-wide/from16 v9, v17

    move/from16 v11, p3

    move-wide/from16 v12, v19

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/N;->l(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v15, :cond_9

    move-object/from16 v15, p1

    :goto_b
    move v2, v0

    goto/16 :goto_e

    :cond_9
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v21

    goto/16 :goto_0

    :cond_a
    move-wide/from16 v19, v2

    move/from16 p3, v4

    move-object/from16 v21, v9

    move v15, v10

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_c

    if-eq v7, v1, :cond_b

    move v14, v15

    move-object/from16 v15, p1

    goto :goto_d

    :cond_b
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v19

    invoke-virtual {v14, v10, v11, v8, v15}, Lcom/google/android/gms/internal/clearcut/N;->o(JILjava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_c
    move-object/from16 v14, p0

    move v13, v15

    move-wide/from16 v10, v19

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move v12, v5

    move/from16 v5, v16

    move/from16 v17, v8

    move v8, v12

    move/from16 v12, v17

    move v14, v13

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/N;->k(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v14, :cond_d

    goto :goto_b

    :cond_d
    :goto_c
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move-object/from16 v9, v21

    move-object/from16 v15, p0

    goto/16 :goto_0

    :goto_d
    move v2, v14

    :goto_e
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    sget-object v3, Lcom/google/android/gms/internal/clearcut/a0;->e:Lcom/google/android/gms/internal/clearcut/a0;

    if-ne v1, v3, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    :cond_e
    move-object v4, v1

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/l0;->c(I[BIILcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_c

    :cond_f
    move v4, v13

    if-ne v0, v4, :cond_10

    return-void

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->b()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_11
    move v4, v13

    move-object v15, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/N;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I

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

.method public final d(Lcom/google/android/gms/internal/clearcut/w;)I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

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

    goto/16 :goto_c

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_c

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_4
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/N;->B(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/x;->b(J)I

    move-result v4

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_6
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/N;->A(JLjava/lang/Object;)I

    move-result v4

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :pswitch_8
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_7
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_c

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_6

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    goto/16 :goto_5

    :pswitch_13
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_8
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_c

    :pswitch_14
    mul-int/lit8 v3, v3, 0x35

    :goto_9
    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v4

    :goto_a
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/x;->b(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    :goto_b
    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    goto :goto_9

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    goto :goto_b

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    goto :goto_b

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    goto :goto_b

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_1b
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_8

    :pswitch_1c
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/h0;->i(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_7

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    goto :goto_b

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    goto :goto_9

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    goto :goto_b

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    goto :goto_9

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    goto :goto_9

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/h0;->j(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_3

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/h0;->k(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    goto :goto_a

    :cond_2
    :goto_c
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->m:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a0;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
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

.method public final e(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/N;->h:[I

    if-eqz v3, :cond_f

    array-length v4, v3

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_f

    aget v9, v3, v7

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/clearcut/N;->w(I)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result v11

    const v12, 0xfffff

    iget-boolean v13, v0, Lcom/google/android/gms/internal/clearcut/N;->g:Z

    if-nez v13, :cond_2

    add-int/lit8 v14, v10, 0x2

    iget-object v15, v0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget v14, v15, v14

    and-int v15, v14, v12

    ushr-int/lit8 v14, v14, 0x14

    shl-int v14, v2, v14

    if-eq v15, v6, :cond_1

    sget-object v6, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    move-object/from16 v16, v3

    int-to-long v2, v15

    invoke-virtual {v6, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v6, v15

    goto :goto_1

    :cond_1
    move-object/from16 v16, v3

    goto :goto_1

    :cond_2
    move-object/from16 v16, v3

    move v14, v5

    :goto_1
    const/high16 v2, 0x10000000

    and-int/2addr v2, v11

    if-eqz v2, :cond_5

    if-eqz v13, :cond_3

    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_3
    and-int v2, v8, v14

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    if-nez v2, :cond_5

    return v5

    :cond_5
    const/high16 v2, 0xff00000

    and-int/2addr v2, v11

    ushr-int/lit8 v2, v2, 0x14

    const/16 v3, 0x9

    if-eq v2, v3, :cond_b

    const/16 v3, 0x11

    if-eq v2, v3, :cond_b

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_9

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_8

    const/16 v3, 0x44

    if-eq v2, v3, :cond_8

    const/16 v3, 0x31

    if-eq v2, v3, :cond_9

    const/16 v3, 0x32

    if-eq v2, v3, :cond_6

    goto/16 :goto_5

    :cond_6
    and-int v2, v11, v12

    int-to-long v2, v2

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/N;->n:Lcom/google/android/gms/internal/clearcut/K;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/K;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/J;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/N;->t(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/K;->f()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v2

    and-int v3, v11, v12

    int-to-long v9, v3

    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/clearcut/Y;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v5

    :cond_9
    and-int v2, v11, v12

    int-to-long v2, v2

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v3

    move v9, v5

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_e

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Lcom/google/android/gms/internal/clearcut/Y;->e(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    return v5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_c
    and-int v2, v8, v14

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    move v2, v5

    :goto_4
    if-eqz v2, :cond_e

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v2

    and-int v3, v11, v12

    int-to-long v9, v3

    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/clearcut/Y;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v5

    :cond_e
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_6
    return v2
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

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

    sget-object v9, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/Z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    move v4, v2

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/Z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/Z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/Z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/Z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/Z;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->i(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->i(JLjava/lang/Object;)Z

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v5

    if-eq v6, v5, :cond_1

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/clearcut/N;->z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->m:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/w;

    iget-object p1, p2, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/a0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final g(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    int-to-long v7, v4

    aget v4, v1, v0

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/N;->y(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;I)V

    goto/16 :goto_6

    :pswitch_1
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    :goto_1
    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v1, v2, v4, p1}, Lcom/google/android/gms/internal/clearcut/i0;->c(JILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0, v4, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/clearcut/Z;->a:Ljava/lang/Class;

    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/N;->n:Lcom/google/android/gms/internal/clearcut/K;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/J;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/N;->l:Lcom/google/android/gms/internal/clearcut/E;

    invoke-virtual {v1, p1, p2, v7, v8}, Lcom/google/android/gms/internal/clearcut/E;->b(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;J)V

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/clearcut/N;->p(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;I)V

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    :goto_2
    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/clearcut/h0;->e(Ljava/lang/Object;JJ)V

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/N;->x(Lcom/google/android/gms/internal/clearcut/w;I)V

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    sget-object v1, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v7, v8, v1, p1}, Lcom/google/android/gms/internal/clearcut/i0;->c(JILjava/lang/Object;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_5
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->i(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v7, v8, v1}, Lcom/google/android/gms/internal/clearcut/i0;->g(Ljava/lang/Object;JZ)V

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    goto/16 :goto_2

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide v9

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->j(JLjava/lang/Object;)F

    move-result v1

    invoke-static {v1, v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/i0;->b(FJLjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {v1, v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/h0;->k(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {v7, v8, p1, v1, v2}, Lcom/google/android/gms/internal/clearcut/i0;->d(JLjava/lang/Object;D)V

    goto/16 :goto_3

    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/N;->g:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->m:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/Z;->b(Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
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
        :pswitch_0
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

.method public final k(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I
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

    sget-object v12, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    add-int/lit8 v7, v6, 0x2

    iget-object v13, v0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget v7, v13, v7

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x2

    const/16 v16, 0x0

    const/4 v15, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_c

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/N;->i(Lcom/google/android/gms/internal/clearcut/Y;[BIIILcom/google/android/gms/internal/auth/A;)I

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

    goto :goto_0

    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    if-nez v5, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/l0;->h(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_2
    if-nez v5, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/l0;->C(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    if-nez v5, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/N;->u(I)Lcom/google/android/gms/internal/clearcut/y;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/clearcut/y;->h(I)Lcom/google/android/gms/internal/clearcut/o0;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/a0;->e:Lcom/google/android/gms/internal/clearcut/a0;

    if-ne v1, v5, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    :cond_3
    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    move v0, v3

    goto/16 :goto_a

    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v0, v3

    goto :goto_4

    :pswitch_4
    if-ne v5, v7, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    :goto_2
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/clearcut/k;->i([BII)Lcom/google/android/gms/internal/clearcut/k;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v7, :cond_c

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v3, v4, v2, v11}, Lcom/google/android/gms/internal/clearcut/N;->j(Lcom/google/android/gms/internal/clearcut/Y;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    if-ne v2, v8, :cond_6

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    :cond_6
    move-object/from16 v2, v16

    if-nez v2, :cond_7

    iget-object v2, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object v2

    goto :goto_2

    :pswitch_6
    if-ne v5, v7, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v2, :cond_8

    const-string v2, ""

    goto :goto_2

    :cond_8
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_a

    add-int v4, v0, v2

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/clearcut/k0;->a([BII)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->c()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_a
    :goto_5
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :pswitch_7
    if-nez v5, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :pswitch_8
    const/4 v0, 0x5

    if-ne v5, v0, :cond_c

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_4

    :pswitch_9
    if-ne v5, v15, :cond_c

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_8
    invoke-virtual {v12, v1, v9, v10, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x8

    goto/16 :goto_4

    :pswitch_a
    if-nez v5, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v2, v11, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_b
    if-nez v5, :cond_c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_c
    const/4 v0, 0x5

    if-ne v5, v0, :cond_c

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/l0;->z(I[B)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_7

    :pswitch_d
    if-ne v5, v15, :cond_c

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/l0;->x(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_8

    :cond_c
    :goto_9
    move v0, v4

    :goto_a
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

.method public final l(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p12

    move-object/from16 v10, p14

    sget-object v11, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/clearcut/z;

    check-cast v12, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/clearcut/h;->g()Z

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
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/clearcut/z;->G(I)Lcom/google/android/gms/internal/clearcut/z;

    move-result-object v12

    invoke-virtual {v11, v1, v8, v9, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v11, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_2

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    and-int/lit8 v1, v5, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/clearcut/N;->i(Lcom/google/android/gms/internal/clearcut/Y;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget-object v6, v10, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/clearcut/h;

    :goto_1
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    if-ge v3, v4, :cond_2

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget v7, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v5, v7, :cond_2

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/clearcut/N;->i(Lcom/google/android/gms/internal/clearcut/Y;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget-object v6, v10, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    move v0, v3

    goto/16 :goto_b

    :pswitch_1
    if-ne v6, v11, :cond_5

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_4

    if-ne v0, v1, :cond_3

    goto/16 :goto_b

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_4
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_5
    if-eqz v6, :cond_6

    goto/16 :goto_a

    :cond_6
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_2
    if-ne v6, v11, :cond_9

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_8

    if-ne v0, v1, :cond_7

    goto/16 :goto_b

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_9
    if-eqz v6, :cond_a

    goto/16 :goto_a

    :cond_a
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_3
    if-ne v6, v11, :cond_d

    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/clearcut/l0;->g([BILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/a0;->e:Lcom/google/android/gms/internal/clearcut/a0;

    if-ne v3, v4, :cond_b

    goto :goto_3

    :cond_b
    move-object v8, v3

    :goto_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/clearcut/N;->u(I)Lcom/google/android/gms/internal/clearcut/y;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/N;->m:Lcom/google/android/gms/internal/clearcut/b0;

    move/from16 v4, p6

    invoke-static {v4, v12, v3, v8, v0}, Lcom/google/android/gms/internal/clearcut/Z;->a(ILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/clearcut/y;Lcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/clearcut/b0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a0;

    if-eqz v0, :cond_c

    iput-object v0, v1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    :cond_c
    move v0, v2

    goto/16 :goto_b

    :cond_d
    if-eqz v6, :cond_e

    goto/16 :goto_a

    :cond_e
    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/clearcut/l0;->o([BILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)V

    throw v8

    :pswitch_4
    if-ne v6, v11, :cond_2

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v1, :cond_f

    :goto_4
    sget-object v1, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    move-object v3, v12

    check-cast v3, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/clearcut/k;->i([BII)Lcom/google/android/gms/internal/clearcut/k;

    move-result-object v3

    move-object v6, v12

    check-cast v6, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    :goto_5
    if-ge v0, v4, :cond_31

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v5, v3, :cond_31

    invoke-static {v2, v1, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v1, :cond_f

    goto :goto_4

    :pswitch_5
    if-ne v6, v11, :cond_2

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/clearcut/N;->h(Lcom/google/android/gms/internal/clearcut/Y;I[BIILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_b

    :pswitch_6
    if-ne v6, v11, :cond_2

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const-string v1, ""

    if-nez v0, :cond_12

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v3, :cond_10

    :goto_6
    move-object v3, v12

    check-cast v3, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_7
    move-object v7, v12

    check-cast v7, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    :goto_8
    if-ge v0, v4, :cond_31

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v3

    iget v6, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v5, v6, :cond_31

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v3, :cond_11

    goto :goto_6

    :cond_11
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_7

    :cond_12
    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v3, :cond_13

    move-object v3, v12

    check-cast v3, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_9

    :cond_13
    add-int v6, v0, v3

    invoke-static {v2, v0, v6}, Lcom/google/android/gms/internal/clearcut/k0;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_17

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v0, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge v6, v4, :cond_16

    invoke-static {v2, v6, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v3, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-ne v5, v3, :cond_16

    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v6

    iget v0, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    if-nez v0, :cond_14

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    add-int v3, v6, v0

    invoke-static {v2, v6, v3}, Lcom/google/android/gms/internal/clearcut/k0;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_15

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v6, v0, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/clearcut/h;->add(Ljava/lang/Object;)Z

    move v6, v3

    goto :goto_9

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->c()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_16
    move v0, v6

    goto/16 :goto_b

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->c()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :pswitch_7
    if-ne v6, v11, :cond_1a

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_19

    if-ne v0, v1, :cond_18

    goto/16 :goto_b

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_19
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_1a
    if-eqz v6, :cond_1b

    goto/16 :goto_a

    :cond_1b
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_8
    if-ne v6, v11, :cond_1e

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_1d

    if-ne v0, v1, :cond_1c

    goto/16 :goto_b

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    throw v8

    :cond_1e
    if-eq v6, v9, :cond_1f

    goto/16 :goto_a

    :cond_1f
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    throw v8

    :pswitch_9
    if-ne v6, v11, :cond_22

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_21

    if-ne v0, v1, :cond_20

    goto/16 :goto_b

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_21
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    throw v8

    :cond_22
    if-eq v6, v14, :cond_23

    goto/16 :goto_a

    :cond_23
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    throw v8

    :pswitch_a
    if-ne v6, v11, :cond_24

    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/clearcut/l0;->g([BILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto/16 :goto_b

    :cond_24
    if-eqz v6, :cond_25

    goto/16 :goto_a

    :cond_25
    invoke-static {v2, v3, v12, v10}, Lcom/google/android/gms/internal/clearcut/l0;->o([BILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)V

    throw v8

    :pswitch_b
    if-ne v6, v11, :cond_28

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_27

    if-ne v0, v1, :cond_26

    goto :goto_b

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_27
    invoke-static {v2, v0, v10}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :cond_28
    if-eqz v6, :cond_29

    goto :goto_a

    :cond_29
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    throw v8

    :pswitch_c
    if-ne v6, v11, :cond_2c

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2b

    if-ne v0, v1, :cond_2a

    goto :goto_b

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_2b
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/clearcut/l0;->z(I[B)F

    throw v8

    :cond_2c
    if-eq v6, v9, :cond_2d

    goto :goto_a

    :cond_2d
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/l0;->z(I[B)F

    throw v8

    :pswitch_d
    if-ne v6, v11, :cond_30

    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v2, v3, v10}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/auth/A;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_2f

    if-ne v0, v1, :cond_2e

    goto :goto_b

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_2f
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/clearcut/l0;->x(I[B)D

    throw v8

    :cond_30
    if-eq v6, v14, :cond_32

    :goto_a
    goto/16 :goto_2

    :cond_31
    :goto_b
    return v0

    :cond_32
    invoke-static {v12}, Landroidx/recyclerview/widget/P;->o(Lcom/google/android/gms/internal/clearcut/z;)V

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/clearcut/l0;->x(I[B)D

    throw v8

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

.method public final m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/A;)I
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    const/4 v8, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v7, v8

    move/from16 v1, v16

    move v6, v1

    :goto_0
    iget-object v5, v15, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    const/16 v17, 0x0

    const v18, 0xfffff

    if-ge v0, v13, :cond_1e

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/clearcut/l0;->d(I[BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    move v2, v0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    move v2, v1

    :goto_1
    ushr-int/lit8 v3, v4, 0x3

    and-int/lit8 v1, v4, 0x7

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/clearcut/N;->w(I)I

    move-result v0

    sget-object v11, Lcom/google/android/gms/internal/clearcut/a0;->e:Lcom/google/android/gms/internal/clearcut/a0;

    if-eq v0, v8, :cond_1a

    add-int/lit8 v19, v0, 0x1

    aget v8, v5, v19

    const/high16 v19, 0xff00000

    and-int v19, v8, v19

    move/from16 p3, v4

    ushr-int/lit8 v4, v19, 0x14

    and-int v13, v8, v18

    move-object/from16 v19, v11

    int-to-long v11, v13

    const/16 v13, 0x11

    move/from16 v21, v8

    if-gt v4, v13, :cond_10

    add-int/lit8 v13, v0, 0x2

    aget v13, v5, v13

    ushr-int/lit8 v22, v13, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v22

    and-int v13, v13, v18

    if-eq v13, v7, :cond_2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    int-to-long v8, v7

    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    int-to-long v6, v13

    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v13

    :cond_2
    const/4 v8, 0x5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v9, p6

    :cond_3
    :goto_2
    move-object/from16 v11, v19

    goto/16 :goto_12

    :pswitch_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    shl-int/lit8 v1, v3, 0x3

    or-int/lit8 v4, v1, 0x4

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v13, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/N;->i(Lcom/google/android/gms/internal/clearcut/Y;[BIIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v6, v22

    move-object/from16 v9, p6

    if-nez v1, :cond_4

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object v1

    goto :goto_3

    :goto_4
    or-int v6, v6, v22

    move-object/from16 v12, p2

    :goto_5
    move/from16 v11, p5

    :goto_6
    move v1, v13

    :goto_7
    const/4 v8, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_5
    move/from16 v13, p3

    move-object/from16 v9, p6

    :cond_6
    move-object/from16 v12, p2

    goto :goto_2

    :pswitch_1
    move/from16 v13, p3

    move-object/from16 v9, p6

    if-nez v1, :cond_6

    move-wide v3, v11

    move-object/from16 v12, p2

    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v8

    iget-wide v0, v9, Lcom/google/android/gms/internal/auth/A;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/l0;->h(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    or-int v6, v6, v22

    move/from16 v11, p5

    move v0, v8

    goto :goto_6

    :pswitch_2
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v12, p2

    if-nez v1, :cond_3

    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/l0;->C(I)I

    move-result v1

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_9
    or-int v6, v6, v22

    goto :goto_5

    :pswitch_3
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v12, p2

    if-nez v1, :cond_3

    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/clearcut/N;->u(I)Lcom/google/android/gms/internal/clearcut/y;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/clearcut/y;->h(I)Lcom/google/android/gms/internal/clearcut/o0;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_b

    :cond_7
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    move-object/from16 v11, v19

    if-ne v3, v11, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    :cond_8
    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v13, v0}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    :goto_a
    move/from16 v11, p5

    move v0, v1

    goto :goto_6

    :cond_9
    :goto_b
    invoke-virtual {v10, v14, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v22

    goto :goto_a

    :pswitch_4
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    const/4 v8, 0x2

    move-object/from16 v12, p2

    if-ne v1, v8, :cond_f

    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->y([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_5
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    const/4 v8, 0x2

    move-object/from16 v12, p2

    if-ne v1, v8, :cond_b

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    move/from16 v8, p4

    invoke-static {v0, v12, v2, v8, v9}, Lcom/google/android/gms/internal/clearcut/N;->j(Lcom/google/android/gms/internal/clearcut/Y;[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_a

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    goto :goto_f

    :cond_a
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object v1

    goto :goto_f

    :goto_c
    or-int v6, v6, v22

    move/from16 v11, p5

    move v1, v13

    move v13, v8

    :goto_d
    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_b
    move/from16 v8, p4

    goto/16 :goto_12

    :pswitch_6
    move/from16 v13, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    const/4 v0, 0x2

    move-object/from16 v12, p2

    if-ne v1, v0, :cond_f

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_c

    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->t([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    goto :goto_e

    :cond_c
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->v([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    :goto_e
    iget-object v1, v9, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    :goto_f
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_7
    move/from16 v13, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    if-nez v1, :cond_f

    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/auth/A;->b:J

    const-wide/16 v17, 0x0

    cmp-long v1, v1, v17

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_10

    :cond_d
    move/from16 v1, v16

    :goto_10
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/i0;->g(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_8
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    if-ne v1, v8, :cond_f

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/clearcut/l0;->s(I[B)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_11
    add-int/lit8 v0, v2, 0x4

    goto/16 :goto_9

    :pswitch_9
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    const/4 v0, 0x1

    move-object/from16 v12, p2

    if-ne v1, v0, :cond_f

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/clearcut/l0;->w(I[B)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v2

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_9

    :pswitch_a
    move/from16 v13, p3

    move-object/from16 v9, p6

    move v8, v2

    move-wide v3, v11

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    if-nez v1, :cond_e

    invoke-static {v12, v8, v9}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/A;->a:I

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :cond_e
    move v2, v8

    goto :goto_12

    :pswitch_b
    move/from16 v13, p3

    move-object/from16 v9, p6

    move v8, v2

    move-wide v3, v11

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    if-nez v1, :cond_e

    invoke-static {v12, v8, v9}, Lcom/google/android/gms/internal/clearcut/l0;->q([BILcom/google/android/gms/internal/auth/A;)I

    move-result v8

    iget-wide v1, v9, Lcom/google/android/gms/internal/auth/A;->b:J

    move-object v0, v10

    move-wide/from16 v17, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :pswitch_c
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    move-object/from16 v12, p2

    if-ne v1, v8, :cond_f

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/clearcut/l0;->z(I[B)F

    move-result v0

    invoke-static {v0, v3, v4, v14}, Lcom/google/android/gms/internal/clearcut/i0;->b(FJLjava/lang/Object;)V

    goto :goto_11

    :pswitch_d
    move/from16 v13, p3

    move-object/from16 v9, p6

    move-wide v3, v11

    move-object/from16 v11, v19

    const/4 v0, 0x1

    move-object/from16 v12, p2

    if-ne v1, v0, :cond_f

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/clearcut/l0;->x(I[B)D

    move-result-wide v0

    invoke-static {v3, v4, v14, v0, v1}, Lcom/google/android/gms/internal/clearcut/i0;->d(JLjava/lang/Object;D)V

    add-int/lit8 v0, v2, 0x8

    goto/16 :goto_9

    :cond_f
    :goto_12
    move/from16 v8, p5

    move-object/from16 v25, v5

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move v9, v13

    move-object v15, v14

    goto/16 :goto_18

    :cond_10
    move/from16 v13, p3

    const/16 v8, 0x1b

    if-ne v4, v8, :cond_14

    const/4 v8, 0x2

    if-ne v1, v8, :cond_13

    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/z;

    check-cast v1, Lcom/google/android/gms/internal/clearcut/h;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/h;->g()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11

    const/16 v3, 0xa

    goto :goto_13

    :cond_11
    shl-int/lit8 v3, v3, 0x1

    :goto_13
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/clearcut/z;->G(I)Lcom/google/android/gms/internal/clearcut/z;

    move-result-object v1

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v5, v1

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/clearcut/N;->s(I)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    move v1, v13

    move v8, v2

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v4, p4

    move/from16 v22, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/N;->h(Lcom/google/android/gms/internal/clearcut/Y;I[BIILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v11, p5

    move/from16 v6, v22

    goto/16 :goto_7

    :cond_13
    move/from16 v22, v6

    move-object/from16 v25, v5

    move/from16 v27, v7

    move-object/from16 v28, v10

    move/from16 v21, v13

    move-object v15, v14

    move-object/from16 v29, v19

    :goto_14
    move v14, v2

    goto/16 :goto_17

    :cond_14
    move v8, v2

    move/from16 v22, v6

    const/16 v2, 0x31

    if-gt v4, v2, :cond_16

    move/from16 v6, v21

    move-object/from16 v21, v10

    int-to-long v9, v6

    move v6, v0

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, p1

    move/from16 p3, v2

    move-object/from16 v2, p2

    move/from16 v23, v3

    move v3, v8

    move/from16 v24, v4

    move/from16 v4, p4

    move-object/from16 v25, v5

    move v5, v13

    move/from16 v26, v6

    move/from16 v6, v23

    move/from16 v27, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v26

    move-object/from16 v28, v21

    move-object/from16 v29, v19

    move-wide/from16 v19, v11

    move/from16 v12, p5

    move/from16 v11, v24

    move/from16 v21, v13

    move-wide/from16 v12, v19

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/N;->l(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v15, :cond_15

    move-object/from16 v15, p1

    :goto_15
    move/from16 v8, p5

    move v2, v0

    :goto_16
    move/from16 v9, v21

    move/from16 v6, v22

    move/from16 v7, v27

    goto/16 :goto_18

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v21

    move/from16 v6, v22

    move/from16 v7, v27

    move-object/from16 v10, v28

    goto/16 :goto_d

    :cond_16
    move/from16 v26, v0

    move/from16 p3, v1

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v27, v7

    move v15, v8

    move-object/from16 v28, v10

    move-object/from16 v29, v19

    move/from16 v6, v21

    move-wide/from16 v19, v11

    move/from16 v21, v13

    const/16 v0, 0x32

    move/from16 v9, v24

    if-ne v9, v0, :cond_18

    move/from16 v7, p3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_17

    move v14, v15

    move-object/from16 v15, p1

    goto/16 :goto_17

    :cond_17
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v10, v19

    move/from16 v12, v26

    invoke-virtual {v14, v10, v11, v12, v15}, Lcom/google/android/gms/internal/clearcut/N;->o(JILjava/lang/Object;)V

    throw v17

    :cond_18
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v13, v15

    move-wide/from16 v10, v19

    move/from16 v12, v26

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move/from16 v5, v21

    move v8, v6

    move/from16 v6, v23

    move v14, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/N;->k(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/A;)I

    move-result v0

    if-ne v0, v14, :cond_19

    goto :goto_15

    :cond_19
    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move-object v14, v15

    move/from16 v1, v21

    move/from16 v6, v22

    move/from16 v7, v27

    move-object/from16 v10, v28

    const/4 v8, -0x1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1a
    move/from16 v21, v4

    move-object/from16 v25, v5

    move/from16 v22, v6

    move/from16 v27, v7

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object v15, v14

    goto/16 :goto_14

    :goto_17
    move/from16 v8, p5

    move v2, v14

    goto/16 :goto_16

    :goto_18
    if-ne v9, v8, :cond_1c

    if-nez v8, :cond_1b

    goto :goto_1a

    :cond_1b
    move v0, v2

    move v1, v9

    :goto_19
    const/4 v2, -0x1

    goto :goto_1b

    :cond_1c
    :goto_1a
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    move-object/from16 v3, v29

    if-ne v1, v3, :cond_1d

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    :cond_1d
    move-object v4, v1

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/l0;->c(I[BIILcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/auth/A;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v8

    move v1, v9

    move-object v14, v15

    move-object/from16 v10, v28

    const/4 v8, -0x1

    move-object/from16 v15, p0

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v25, v5

    move/from16 v22, v6

    move/from16 v27, v7

    move-object/from16 v28, v10

    move v8, v11

    move-object v15, v14

    goto :goto_19

    :goto_1b
    if-eq v7, v2, :cond_1f

    int-to-long v2, v7

    move-object/from16 v4, v28

    invoke-virtual {v4, v15, v2, v3, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/google/android/gms/internal/clearcut/N;->i:[I

    if-eqz v3, :cond_22

    array-length v4, v3

    move/from16 v5, v16

    :goto_1c
    if-ge v5, v4, :cond_22

    aget v6, v3, v5

    aget v7, v25, v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result v7

    and-int v7, v7, v18

    int-to-long v9, v7

    invoke-static {v9, v10, v15}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_20

    goto :goto_1d

    :cond_20
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/clearcut/N;->u(I)Lcom/google/android/gms/internal/clearcut/y;

    move-result-object v9

    if-nez v9, :cond_21

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_21
    iget-object v0, v2, Lcom/google/android/gms/internal/clearcut/N;->n:Lcom/google/android/gms/internal/clearcut/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/internal/clearcut/K;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/clearcut/N;->t(I)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/K;->f()V

    throw v17

    :cond_22
    move/from16 v2, p4

    if-nez v8, :cond_24

    if-ne v0, v2, :cond_23

    goto :goto_1e

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->b()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object v0

    throw v0

    :cond_24
    if-gt v0, v2, :cond_25

    if-ne v1, v8, :cond_25

    :goto_1e
    return v0

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->b()Lcom/google/android/gms/internal/clearcut/A;

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

.method public final o(JILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/N;->o:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/clearcut/N;->t(I)Ljava/lang/Object;

    invoke-virtual {v0, p4, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->n:Lcom/google/android/gms/internal/clearcut/K;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/android/gms/internal/clearcut/K;->d(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/K;->e()Lcom/google/android/gms/internal/clearcut/J;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/clearcut/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/J;

    invoke-virtual {v0, p4, p1, p2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/K;->f()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final p(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;I)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/N;->x(Lcom/google/android/gms/internal/clearcut/w;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/N;->x(Lcom/google/android/gms/internal/clearcut/w;I)V

    :cond_2
    return-void
.end method

.method public final q(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(ILjava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/N;->g:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    const/high16 p1, 0xff00000

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v4, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v2

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v2

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/clearcut/k;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/google/android/gms/internal/clearcut/k;->c:Lcom/google/android/gms/internal/clearcut/k;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v3

    :cond_b
    return v2

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->i(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_d

    return v3

    :cond_d
    return v2

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_e

    return v3

    :cond_e
    return v2

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_f

    return v3

    :cond_f
    return v2

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_10

    return v3

    :cond_10
    return v2

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v4

    if-eqz p0, :cond_11

    return v3

    :cond_11
    return v2

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->j(JLjava/lang/Object;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_12

    return v3

    :cond_12
    return v2

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->k(JLjava/lang/Object;)D

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-eqz p0, :cond_13

    return v3

    :cond_13
    return v2

    :cond_14
    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget p0, p0, p1

    ushr-int/lit8 p1, p0, 0x14

    shl-int p1, v3, p1

    and-int/2addr p0, v1

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v3

    :cond_15
    return v2

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

.method public final s(I)Lcom/google/android/gms/internal/clearcut/Y;
    .locals 2

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/Y;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/clearcut/T;->c:Lcom/google/android/gms/internal/clearcut/T;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final t(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final u(I)Lcom/google/android/gms/internal/clearcut/y;
    .locals 0

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/clearcut/y;

    return-object p0
.end method

.method public final v(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final w(I)I
    .locals 6

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/N;->c:I

    if-lt p1, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/N;->e:I

    if-ge p1, v3, :cond_1

    sub-int p0, p1, v1

    shl-int/lit8 p0, p0, 0x2

    aget v1, v2, p0

    if-ne v1, p1, :cond_0

    return p0

    :cond_0
    return v0

    :cond_1
    iget p0, p0, Lcom/google/android/gms/internal/clearcut/N;->d:I

    if-gt p1, p0, :cond_4

    sub-int/2addr v3, v1

    array-length p0, v2

    div-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-gt v3, p0, :cond_4

    add-int v1, p0, v3

    ushr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v4, v1, 0x2

    aget v5, v2, v4

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    if-ge p1, v5, :cond_3

    add-int/lit8 p0, v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final x(Lcom/google/android/gms/internal/clearcut/w;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/N;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget p0, p0, p2

    ushr-int/lit8 p2, p0, 0x14

    const/4 v0, 0x1

    shl-int p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    sget-object p0, Lcom/google/android/gms/internal/clearcut/i0;->d:Lcom/google/android/gms/internal/clearcut/h0;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/h0;->g(JLjava/lang/Object;)I

    move-result p0

    or-int/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/gms/internal/clearcut/i0;->c(JILjava/lang/Object;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;I)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/clearcut/N;->v(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/N;->a:[I

    aget v2, v1, p3

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {p0, v2, p3, p2}, Lcom/google/android/gms/internal/clearcut/N;->q(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/clearcut/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/w;

    move-result-object p0

    invoke-static {v4, v5, p1, p0}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p2, p3, v2, p1}, Lcom/google/android/gms/internal/clearcut/i0;->c(JILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v4, v5, p1, p2}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x2

    aget p0, v1, p3

    and-int/2addr p0, v3

    int-to-long p2, p0

    invoke-static {p2, p3, v2, p1}, Lcom/google/android/gms/internal/clearcut/i0;->c(JILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/clearcut/N;->r(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
