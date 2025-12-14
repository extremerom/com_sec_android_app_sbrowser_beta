.class public final Lcom/google/common/collect/J;
.super Lcom/google/common/collect/H;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/common/collect/E;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    new-instance v0, Lcom/google/common/collect/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/H;I)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/E;->d:Lcom/google/common/collect/C;

    iget-object v0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {v0}, Lcom/google/common/collect/p;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/E;->f:I

    iget v0, p0, Lcom/google/common/collect/E;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/E;->g:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    iget-object p0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    iget-object v0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    iget-object p0, p0, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    invoke-virtual {p0}, Lcom/google/common/collect/k;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    iget-object v0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/B;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iget-object v1, v1, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/D;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/D;-><init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/common/collect/D;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lcom/google/common/collect/D;->next()Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/common/collect/D;->remove()V

    goto :goto_2

    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_3
    return-object v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/J;->c:Lcom/google/common/collect/E;

    invoke-virtual {p0}, Lcom/google/common/collect/k;->d()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
