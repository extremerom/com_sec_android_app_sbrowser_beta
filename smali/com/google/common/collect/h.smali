.class public final Lcom/google/common/collect/h;
.super Lcom/google/common/collect/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/i;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h;->e:Lcom/google/common/collect/i;

    invoke-direct {p0, p1}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/h;->e:Lcom/google/common/collect/i;

    iget-object v0, p1, Lcom/google/common/collect/i;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/i;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/h;->e:Lcom/google/common/collect/i;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/h;->c()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/google/common/collect/i;->f:Lcom/google/common/collect/l;

    iget p1, p0, Lcom/google/common/collect/l;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/l;->d:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/i;->g()V

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/d;->b()V

    iget-object p0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    return-object p0
.end method

.method public final hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->c()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->c()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->c()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->c()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/h;->c()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
