.class public final Li;
.super Ljava/lang/Object;
.source "chromium-webapk-1.dex-default--1"


# instance fields
.field public a:[I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La;->a:[I

    iput-object v0, p0, Li;->a:[I

    sget-object v0, La;->b:[Ljava/lang/Object;

    iput-object v0, p0, Li;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Li;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Li;->b(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 7

    iget v0, p0, Li;->c:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v1, p0, Li;->a:[I

    invoke-static {v1, v0, p2}, La;->a([III)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    return v1

    :cond_4
    add-int/lit8 v2, v1, 0x1

    :goto_2
    if-ge v2, v0, :cond_8

    iget-object v5, p0, Li;->a:[I

    aget v5, v5, v2

    if-ne v5, p2, :cond_8

    iget-object v5, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    if-nez p1, :cond_6

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_7

    return v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    sub-int/2addr v1, v4

    :goto_4
    if-ltz v1, :cond_c

    iget-object v0, p0, Li;->a:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_c

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v0, v0, v5

    if-nez p1, :cond_a

    if-nez v0, :cond_9

    move v0, v4

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_b

    return v1

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_c
    not-int p1, v2

    return p1
.end method

.method public final c()I
    .locals 5

    iget v0, p0, Li;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v1, p0, Li;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, La;->a([III)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    :goto_0
    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Li;->a:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    iget-object v0, p0, Li;->a:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    not-int v0, v2

    return v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Li;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected index to be within 0..size()-1, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message"

    invoke-static {p1, v0}, Lc;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/reflect/GenericDeclaration;)V
    .locals 7

    iget v0, p0, Li;->c:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Li;->b(Ljava/lang/Object;I)I

    move-result v2

    if-ltz v2, :cond_0

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-void

    :cond_0
    not-int v2, v2

    iget-object v3, p0, Li;->a:[I

    array-length v4, v3

    if-lt v0, v4, :cond_4

    const/16 v4, 0x8

    if-lt v0, v4, :cond_1

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-lt v0, v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const-string v5, "copyOf(...)"

    invoke-static {v3, v5}, Lc;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Li;->a:[I

    iget-object v3, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lc;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Li;->b:[Ljava/lang/Object;

    iget v3, p0, Li;->c:I

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Li;->a:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v3, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v2, 0x1

    iget v6, p0, Li;->c:I

    shl-int/lit8 v6, v6, 0x1

    sub-int/2addr v6, v5

    invoke-static {v3, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget v3, p0, Li;->c:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Li;->a:[I

    array-length v4, v0

    if-ge v2, v4, :cond_6

    aput v1, v0, v2

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Li;->c:I

    return-void

    :cond_6
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Li;

    if-eqz v1, :cond_5

    iget v1, p0, Li;->c:I

    move-object v2, p1

    check-cast v2, Li;

    iget v2, v2, Li;->c:I

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    check-cast p1, Li;

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Li;->d(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Li;->f(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Li;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-nez v5, :cond_a

    if-nez v3, :cond_2

    invoke-virtual {p1}, Li;->c()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Li;->b(Ljava/lang/Object;I)I

    move-result v3

    :goto_1
    if-ltz v3, :cond_a

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_a

    iget v1, p0, Li;->c:I

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    goto :goto_5

    :cond_6
    iget v1, p0, Li;->c:I

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Li;->d(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Li;->f(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_7

    if-nez v5, :cond_a

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_a
    :goto_5
    return v0
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Li;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Li;->b:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected index to be within 0..size()-1, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message"

    invoke-static {p1, v0}, Lc;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Li;->a:[I

    iget-object v1, p0, Li;->b:[Ljava/lang/Object;

    iget v2, p0, Li;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v7, v1, v4

    aget v8, v0, v5

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    return v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Li;->c:I

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    mul-int/lit8 v0, v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Li;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v2}, Li;->d(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(this Map)"

    if-eq v3, v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Li;->f(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lc;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
