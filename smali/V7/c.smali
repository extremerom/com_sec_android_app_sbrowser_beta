.class public abstract LV7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/common/base/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/base/p;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/common/base/p;-><init>(Ljava/lang/String;)V

    sput-object v0, LV7/c;->a:Lcom/google/common/base/p;

    return-void
.end method

.method public static a(Ljava/util/ArrayDeque;Ljava/lang/String;ILG5/g4;)I
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    const/16 v3, 0x3a

    const/16 v4, 0x21

    const/16 v5, 0x2c

    const/16 v6, 0x3f

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x26

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eq v1, v4, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_4

    :cond_2
    sget-object v3, LV7/c;->a:Lcom/google/common/base/p;

    invoke-virtual {v3, p0}, Lcom/google/common/base/p;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {v1}, LV7/b;->a(C)LV7/b;

    move-result-object v4

    iget v7, p3, LG5/g4;->b:I

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x2

    iget-object v8, p3, LG5/g4;->c:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    array-length v9, v8

    if-le v7, v9, :cond_3

    array-length v9, v8

    invoke-static {v9, v7}, LG5/J;->a(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p3, LG5/g4;->c:Ljava/lang/Object;

    :cond_3
    iget-object v7, p3, LG5/g4;->c:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iget v8, p3, LG5/g4;->b:I

    mul-int/lit8 v9, v8, 0x2

    aput-object v3, v7, v9

    add-int/lit8 v9, v9, 0x1

    aput-object v4, v7, v9

    add-int/lit8 v8, v8, 0x1

    iput v8, p3, LG5/g4;->b:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_7

    :cond_5
    if-ge v2, v0, :cond_7

    invoke-static {p0, p1, v2, p3}, LV7/c;->a(Ljava/util/ArrayDeque;Ljava/lang/String;ILG5/g4;)I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    sub-int/2addr v2, p2

    return v2
.end method

.method public static varargs b([Ljava/lang/CharSequence;)Lcom/google/common/collect/Q;
    .locals 16

    sget-object v0, LV7/c;->a:Lcom/google/common/base/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/p;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LG5/g4;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LG5/g4;-><init>(IZ)V

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, LG5/g4;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, LG5/g4;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    invoke-static {v5, v0, v4, v1}, LV7/c;->a(Ljava/util/ArrayDeque;Ljava/lang/String;ILG5/g4;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    iget-object v0, v1, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/v;

    if-nez v0, :cond_17

    iget v0, v1, LG5/g4;->b:I

    iget-object v3, v1, LG5/g4;->c:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/common/collect/Q;->g:Lcom/google/common/collect/Q;

    goto/16 :goto_e

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Q;

    invoke-direct {v0, v4, v5, v3}, Lcom/google/common/collect/Q;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_2
    array-length v6, v3

    shr-int/2addr v6, v4

    invoke-static {v0, v6}, Lcom/google/common/base/C;->h(II)V

    invoke-static {v0}, Lcom/google/common/collect/w;->r(I)I

    move-result v6

    if-ne v0, v4, :cond_3

    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v4, 0x2

    goto/16 :goto_d

    :cond_3
    add-int/lit8 v8, v6, -0x1

    const/16 v9, 0x80

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-gt v6, v9, :cond_9

    new-array v6, v6, [B

    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([BB)V

    move v9, v2

    move v11, v9

    :goto_2
    if-ge v9, v0, :cond_7

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v11, 0x2

    aget-object v14, v3, v12

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v4

    aget-object v12, v3, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, LG5/I;->f(I)I

    move-result v15

    :goto_3
    and-int/2addr v15, v8

    aget-byte v7, v6, v15

    const/16 v4, 0xff

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_5

    int-to-byte v4, v13

    aput-byte v4, v6, v15

    if-ge v11, v9, :cond_4

    aput-object v14, v3, v13

    xor-int/lit8 v4, v13, 0x1

    aput-object v12, v3, v4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    aget-object v4, v3, v7

    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/google/common/collect/v;

    xor-int/lit8 v5, v7, 0x1

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v14, v12, v7}, Lcom/google/common/collect/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v3, v5

    move-object v5, v4

    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    if-ne v11, v0, :cond_8

    :goto_5
    move-object v5, v6

    goto :goto_1

    :cond_8
    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    aput-object v5, v4, v6

    goto/16 :goto_c

    :cond_9
    const v4, 0x8000

    if-gt v6, v4, :cond_f

    new-array v4, v6, [S

    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([SS)V

    move v6, v2

    move v7, v6

    :goto_6
    if-ge v6, v0, :cond_d

    mul-int/lit8 v9, v6, 0x2

    mul-int/lit8 v11, v7, 0x2

    aget-object v12, v3, v9

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    xor-int/2addr v9, v13

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, LG5/I;->f(I)I

    move-result v13

    :goto_7
    and-int/2addr v13, v8

    aget-short v14, v4, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_b

    int-to-short v14, v11

    aput-short v14, v4, v13

    if-ge v7, v6, :cond_a

    aput-object v12, v3, v11

    xor-int/lit8 v11, v11, 0x1

    aput-object v9, v3, v11

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    aget-object v15, v3, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    new-instance v5, Lcom/google/common/collect/v;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v12, v9, v13}, Lcom/google/common/collect/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v11

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_d
    if-ne v7, v0, :cond_e

    goto :goto_c

    :cond_e
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    aput-object v5, v6, v4

    goto :goto_5

    :cond_f
    new-array v4, v6, [I

    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    move v6, v2

    move v7, v6

    :goto_9
    if-ge v6, v0, :cond_13

    mul-int/lit8 v9, v6, 0x2

    mul-int/lit8 v12, v7, 0x2

    aget-object v13, v3, v9

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    xor-int/2addr v9, v14

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, LG5/I;->f(I)I

    move-result v14

    :goto_a
    and-int/2addr v14, v8

    aget v15, v4, v14

    if-ne v15, v11, :cond_11

    aput v12, v4, v14

    if-ge v7, v6, :cond_10

    aput-object v13, v3, v12

    xor-int/lit8 v12, v12, 0x1

    aput-object v9, v3, v12

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_11
    aget-object v11, v3, v15

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    new-instance v5, Lcom/google/common/collect/v;

    xor-int/lit8 v11, v15, 0x1

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v13, v9, v12}, Lcom/google/common/collect/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v11

    :goto_b
    add-int/lit8 v6, v6, 0x1

    const/4 v11, -0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v14, v14, 0x1

    const/4 v11, -0x1

    goto :goto_a

    :cond_13
    if-ne v7, v0, :cond_14

    :goto_c
    move-object v5, v4

    goto/16 :goto_1

    :cond_14
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    aput-object v5, v6, v4

    move-object v5, v6

    :goto_d
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_15

    check-cast v5, [Ljava/lang/Object;

    aget-object v0, v5, v4

    check-cast v0, Lcom/google/common/collect/v;

    iput-object v0, v1, LG5/g4;->d:Ljava/lang/Object;

    aget-object v0, v5, v2

    const/4 v2, 0x1

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v4, v2, 0x2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v0

    move v0, v2

    :cond_15
    new-instance v2, Lcom/google/common/collect/Q;

    invoke-direct {v2, v0, v5, v3}, Lcom/google/common/collect/Q;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v2

    :goto_e
    iget-object v1, v1, LG5/g4;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/v;

    if-nez v1, :cond_16

    return-object v0

    :cond_16
    invoke-virtual {v1}, Lcom/google/common/collect/v;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-virtual {v0}, Lcom/google/common/collect/v;->a()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
