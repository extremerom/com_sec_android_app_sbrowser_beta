.class public abstract Lcom/google/common/collect/H;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public transient a:Ljava/util/Set;

.field public transient b:Lcom/google/common/cache/J;


# virtual methods
.method public abstract a()Ljava/util/Set;
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/H;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/H;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/H;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/H;->b:Lcom/google/common/cache/J;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/cache/J;

    invoke-direct {v0, p0}, Lcom/google/common/cache/J;-><init>(Lcom/google/common/collect/H;)V

    iput-object v0, p0, Lcom/google/common/collect/H;->b:Lcom/google/common/cache/J;

    :cond_0
    return-object v0
.end method
