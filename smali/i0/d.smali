.class public final Li0/d;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lub/e;


# instance fields
.field public a:Lh0/b;

.field public b:Lf0/l;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:Li0/e;


# direct methods
.method public constructor <init>(Li0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    new-instance v0, Lh0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li0/d;->a:Lh0/b;

    iget-object v0, p1, Lf0/c;->a:Lf0/l;

    iput-object v0, p0, Li0/d;->b:Lf0/l;

    iget v0, p1, Lf0/c;->b:I

    iput v0, p0, Li0/d;->e:I

    iput-object p1, p0, Li0/d;->f:Li0/e;

    return-void
.end method


# virtual methods
.method public final a()Li0/e;
    .locals 3

    iget-object v0, p0, Li0/d;->b:Lf0/l;

    iget-object v1, p0, Li0/d;->f:Li0/e;

    iget-object v2, v1, Lf0/c;->a:Lf0/l;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lh0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li0/d;->a:Lh0/b;

    new-instance v1, Li0/e;

    iget-object v0, p0, Li0/d;->b:Lf0/l;

    iget v2, p0, Li0/d;->e:I

    invoke-direct {v1, v0, v2}, Lf0/c;-><init>(Lf0/l;I)V

    :goto_0
    iput-object v1, p0, Li0/d;->f:Li0/e;

    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Li0/d;->b:Lf0/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lf0/l;->d(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Li0/d;->b:Lf0/l;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lf0/l;->g(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final clear()V
    .locals 1

    sget-object v0, Lf0/l;->e:Lf0/l;

    iput-object v0, p0, Li0/d;->b:Lf0/l;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li0/d;->e(I)V

    return-void
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, La0/g0;

    invoke-virtual {p0, p1}, Li0/d;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La0/N0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, La0/N0;

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Li0/d;->c:Ljava/lang/Object;

    iget-object v0, p0, Li0/d;->b:Lf0/l;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p0}, Lf0/l;->n(ILjava/lang/Object;ILi0/d;)Lf0/l;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lf0/l;->e:Lf0/l;

    :cond_1
    iput-object p1, p0, Li0/d;->b:Lf0/l;

    iget-object p0, p0, Li0/d;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Li0/d;->e:I

    iget p1, p0, Li0/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li0/d;->d:I

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    new-instance v0, Lf0/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lf0/f;-><init>(ILi0/d;)V

    return-object v0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, La0/g0;

    invoke-virtual {p0, p1}, Li0/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/N0;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, La0/g0;

    check-cast p2, La0/N0;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/N0;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    new-instance v0, Lf0/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lf0/f;-><init>(ILi0/d;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Li0/d;->c:Ljava/lang/Object;

    iget-object v1, p0, Li0/d;->b:Lf0/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lf0/l;->l(ILjava/lang/Object;Ljava/lang/Object;ILi0/d;)Lf0/l;

    move-result-object p1

    iput-object p1, p0, Li0/d;->b:Lf0/l;

    iget-object p0, p0, Li0/d;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 6

    instance-of v0, p1, Lf0/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lf0/c;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    instance-of v0, p1, Li0/d;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Li0/d;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Li0/d;->a()Li0/e;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    new-instance p1, Lh0/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lh0/a;->a:I

    iget v2, p0, Li0/d;->e:I

    iget-object v3, p0, Li0/d;->b:Lf0/l;

    iget-object v4, v1, Lf0/c;->a:Lf0/l;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder>"

    invoke-static {v4, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0, p1, p0}, Lf0/l;->m(Lf0/l;ILh0/a;Li0/d;)Lf0/l;

    move-result-object v0

    iput-object v0, p0, Li0/d;->b:Lf0/l;

    iget v0, v1, Lf0/c;->b:I

    add-int/2addr v0, v2

    iget p1, p1, Lh0/a;->a:I

    sub-int/2addr v0, p1

    if-eq v2, v0, :cond_5

    invoke-virtual {p0, v0}, Li0/d;->e(I)V

    goto :goto_3

    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, La0/g0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, La0/g0;

    invoke-virtual {p0, p1}, Li0/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/N0;

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget v0, p0, Li0/d;->e:I

    iget-object v1, p0, Li0/d;->b:Lf0/l;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lf0/l;->o(ILjava/lang/Object;Ljava/lang/Object;ILi0/d;)Lf0/l;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lf0/l;->e:Lf0/l;

    :cond_1
    iput-object p1, p0, Li0/d;->b:Lf0/l;

    iget p0, p0, Li0/d;->e:I

    if-eq v0, p0, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Li0/d;->e:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    new-instance v0, Lf0/h;

    invoke-direct {v0, p0}, Lf0/h;-><init>(Li0/d;)V

    return-object v0
.end method
