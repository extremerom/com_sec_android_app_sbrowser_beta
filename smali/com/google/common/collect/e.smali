.class public final Lcom/google/common/collect/e;
.super Lcom/google/common/collect/H;
.source "SourceFile"


# instance fields
.field public final transient c:Lcom/google/common/collect/p;

.field public final synthetic d:Lcom/google/common/collect/l;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l;Lcom/google/common/collect/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    new-instance v0, Lcom/google/common/collect/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/H;I)V

    return-object v0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    iget-object v1, v0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    iget-object v2, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    if-ne v2, v1, :cond_1

    iget-object p0, v0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/p;->clear()V

    const/4 p0, 0x0

    iput p0, v0, Lcom/google/common/collect/l;->d:I

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/common/collect/d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/e;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/d;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/d;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->remove()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/common/collect/g;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/l;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/i;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/common/collect/i;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/l;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/i;)V

    goto :goto_1

    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    invoke-virtual {p0}, Lcom/google/common/collect/k;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/l;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/l;->d:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/l;->d:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
