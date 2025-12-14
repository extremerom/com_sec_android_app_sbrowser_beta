.class public final Lcom/google/common/collect/z;
.super Lcom/google/common/collect/V;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/common/collect/E;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/E;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/z;->a:Lcom/google/common/collect/E;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/z;->a:Lcom/google/common/collect/E;

    iget-object p0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/A;

    iget-object p0, p0, Lcom/google/common/collect/z;->a:Lcom/google/common/collect/E;

    invoke-direct {v0, p0}, Lcom/google/common/collect/A;-><init>(Lcom/google/common/collect/E;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object p0, p0, Lcom/google/common/collect/z;->a:Lcom/google/common/collect/E;

    iget-object v0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iget-object v0, v0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/D;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/D;-><init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/common/collect/D;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lcom/google/common/collect/D;->next()Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/common/collect/D;->remove()V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/z;->a:Lcom/google/common/collect/E;

    iget-object p0, p0, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {p0}, Lcom/google/common/collect/p;->size()I

    move-result p0

    return p0
.end method
