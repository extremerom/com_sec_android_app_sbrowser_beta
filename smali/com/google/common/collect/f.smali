.class public final Lcom/google/common/collect/f;
.super Lcom/google/common/collect/V;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/p;

.field public final synthetic b:Lcom/google/common/collect/l;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l;Lcom/google/common/collect/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f;->b:Lcom/google/common/collect/l;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/d;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/p;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/d;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/f;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/google/common/collect/f;->b:Lcom/google/common/collect/l;

    iget p1, p0, Lcom/google/common/collect/l;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/l;->d:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/f;->a:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->size()I

    move-result p0

    return p0
.end method
