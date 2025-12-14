.class public final Lcom/google/common/collect/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lcom/google/common/collect/Q;


# instance fields
.field public transient a:Lcom/google/common/collect/N;

.field public transient b:Lcom/google/common/collect/O;

.field public transient c:Lcom/google/common/collect/P;

.field public final transient d:Ljava/lang/Object;

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/Q;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/collect/Q;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/collect/Q;->g:Lcom/google/common/collect/Q;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/Q;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/Q;->f:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Q;->c:Lcom/google/common/collect/P;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/P;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/collect/Q;->f:I

    iget-object v3, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/P;-><init>(II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Q;->c:Lcom/google/common/collect/P;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/u;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Q;->a:Lcom/google/common/collect/N;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/N;

    iget v1, p0, Lcom/google/common/collect/Q;->f:I

    iget-object v2, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/common/collect/N;-><init>(Lcom/google/common/collect/Q;[Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/Q;->a:Lcom/google/common/collect/N;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/common/collect/Q;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p0, Lcom/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/w;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/Q;->f:I

    if-ne v3, v1, :cond_2

    const/4 p0, 0x0

    aget-object p0, v2, p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-object p0, v2, v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_2
    iget-object p0, p0, Lcom/google/common/collect/Q;->d:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, p0, [B

    if-eqz v3, :cond_6

    move-object v3, p0

    check-cast v3, [B

    array-length p0, v3

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, LG5/I;->f(I)I

    move-result p0

    :goto_1
    and-int/2addr p0, v4

    aget-byte v5, v3, p0

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    goto :goto_0

    :cond_4
    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v2, p0

    goto :goto_4

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    instance-of v3, p0, [S

    if-eqz v3, :cond_9

    move-object v3, p0

    check-cast v3, [S

    array-length p0, v3

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, LG5/I;->f(I)I

    move-result p0

    :goto_2
    and-int/2addr p0, v4

    aget-short v5, v3, p0

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_7

    goto :goto_0

    :cond_7
    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v2, p0

    goto :goto_4

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_9
    check-cast p0, [I

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, LG5/I;->f(I)I

    move-result v4

    :goto_3
    and-int/2addr v4, v3

    aget v5, p0, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v2, p0

    :goto_4
    if-nez p0, :cond_b

    return-object v0

    :cond_b
    return-object p0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/Q;->a:Lcom/google/common/collect/N;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/N;

    iget v1, p0, Lcom/google/common/collect/Q;->f:I

    iget-object v2, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/common/collect/N;-><init>(Lcom/google/common/collect/Q;[Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/Q;->a:Lcom/google/common/collect/N;

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    not-int v1, v1

    not-int v1, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Q;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Q;->b:Lcom/google/common/collect/O;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/P;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/Q;->f:I

    iget-object v3, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/P;-><init>(II[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/common/collect/O;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/O;-><init>(Lcom/google/common/collect/Q;Lcom/google/common/collect/P;)V

    iput-object v1, p0, Lcom/google/common/collect/Q;->b:Lcom/google/common/collect/O;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/Q;->f:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "size"

    iget v1, p0, Lcom/google/common/collect/Q;->f:I

    invoke-static {v1, v0}, LG5/G;->e(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/Q;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/N;

    invoke-virtual {p0}, Lcom/google/common/collect/w;->g()Lcom/google/common/collect/u;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/common/collect/u;->w(I)Lcom/google/common/collect/s;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/s;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Q;->c:Lcom/google/common/collect/P;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/P;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/collect/Q;->f:I

    iget-object v3, p0, Lcom/google/common/collect/Q;->e:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/P;-><init>(II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Q;->c:Lcom/google/common/collect/P;

    :cond_0
    return-object v0
.end method
