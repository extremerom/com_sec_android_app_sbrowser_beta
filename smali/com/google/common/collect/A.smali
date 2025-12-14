.class public final Lcom/google/common/collect/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/util/HashSet;

.field public b:Lcom/google/common/collect/C;

.field public c:Lcom/google/common/collect/C;

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/E;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/E;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/A;->e:Lcom/google/common/collect/E;

    invoke-virtual {p1}, Lcom/google/common/collect/k;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, LG5/K;->b(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/A;->a:Ljava/util/HashSet;

    iget-object v0, p1, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/A;->b:Lcom/google/common/collect/C;

    iget p1, p1, Lcom/google/common/collect/E;->g:I

    iput p1, p0, Lcom/google/common/collect/A;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/A;->e:Lcom/google/common/collect/E;

    iget v0, v0, Lcom/google/common/collect/E;->g:I

    iget v1, p0, Lcom/google/common/collect/A;->d:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/A;->b:Lcom/google/common/collect/C;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/A;->e:Lcom/google/common/collect/E;

    iget v0, v0, Lcom/google/common/collect/E;->g:I

    iget v1, p0, Lcom/google/common/collect/A;->d:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/A;->b:Lcom/google/common/collect/C;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/C;

    iget-object v1, p0, Lcom/google/common/collect/A;->a:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/A;->b:Lcom/google/common/collect/C;

    iget-object v0, v0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/A;->b:Lcom/google/common/collect/C;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/C;

    iget-object p0, p0, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/A;->e:Lcom/google/common/collect/E;

    iget v1, v0, Lcom/google/common/collect/E;->g:I

    iget v2, p0, Lcom/google/common/collect/A;->d:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/C;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v1, v2}, Lcom/google/common/base/C;->j(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/C;

    iget-object v1, v1, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/common/collect/D;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/D;-><init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/D;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/google/common/collect/D;->next()Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/common/collect/D;->remove()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/A;->c:Lcom/google/common/collect/C;

    iget v0, v0, Lcom/google/common/collect/E;->g:I

    iput v0, p0, Lcom/google/common/collect/A;->d:I

    return-void

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
