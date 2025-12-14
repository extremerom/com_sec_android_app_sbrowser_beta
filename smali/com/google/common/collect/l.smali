.class public final Lcom/google/common/collect/l;
.super Lcom/google/common/collect/k;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient c:Lcom/google/common/collect/p;

.field public transient d:I

.field public final transient e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/common/collect/p;->a()Lcom/google/common/collect/p;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/common/collect/k;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/p;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/C;->e(Z)V

    iput-object v0, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    const/4 v0, 0x3

    const-string v1, "expectedValuesPerKey"

    invoke-static {v0, v1}, LG5/G;->e(ILjava/lang/String;)V

    iput v0, p0, Lcom/google/common/collect/l;->e:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/google/common/collect/e;

    iget-object v1, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e;-><init>(Lcom/google/common/collect/l;Lcom/google/common/collect/p;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 2

    new-instance v0, Lcom/google/common/collect/f;

    iget-object v1, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/f;-><init>(Lcom/google/common/collect/l;Lcom/google/common/collect/p;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/l;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/collect/g;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/l;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/i;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/common/collect/i;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/l;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/i;)V

    :goto_0
    return-object v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/common/collect/l;->e:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/common/collect/l;->d:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/collect/l;->d:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "New Collection violated the Collection spec"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/common/collect/l;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/l;->d:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
