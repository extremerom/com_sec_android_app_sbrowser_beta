.class public final Lcom/google/common/collect/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:Lcom/google/common/collect/C;

.field public d:Lcom/google/common/collect/C;

.field public e:Lcom/google/common/collect/C;

.field public final synthetic f:Lcom/google/common/collect/E;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/E;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/D;->f:Lcom/google/common/collect/E;

    iput-object p2, p0, Lcom/google/common/collect/D;->a:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/B;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/E;Ljava/lang/Object;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/D;->f:Lcom/google/common/collect/E;

    iget-object p1, p1, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/B;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/google/common/collect/B;->c:I

    :goto_0
    invoke-static {p3, v0}, Lcom/google/common/base/C;->h(II)V

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/B;->b:Lcom/google/common/collect/C;

    :goto_1
    iput-object p1, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    iput v0, p0, Lcom/google/common/collect/D;->b:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/D;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    :goto_3
    iput-object p1, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/D;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/D;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    iget-object v1, p0, Lcom/google/common/collect/D;->f:Lcom/google/common/collect/E;

    iget-object v2, p0, Lcom/google/common/collect/D;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/common/collect/E;->e(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/C;)Lcom/google/common/collect/C;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    iget p1, p0, Lcom/google/common/collect/D;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/D;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    iget-object v1, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iput-object v1, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    iget v1, p0, Lcom/google/common/collect/D;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/D;->b:I

    iget-object p0, v0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/D;->b:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    iput-object v0, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    iget-object v1, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object v1, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    iget v1, p0, Lcom/google/common/collect/D;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/D;->b:I

    iget-object p0, v0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/D;->b:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final remove()V
    .locals 7

    iget-object v0, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "no calls to next() since the last call to remove()"

    invoke-static {v0, v3}, Lcom/google/common/base/C;->j(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    iget-object v3, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    if-eq v0, v3, :cond_1

    iget-object v3, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object v3, p0, Lcom/google/common/collect/D;->e:Lcom/google/common/collect/C;

    iget v3, p0, Lcom/google/common/collect/D;->b:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/google/common/collect/D;->b:I

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iput-object v3, p0, Lcom/google/common/collect/D;->c:Lcom/google/common/collect/C;

    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/D;->f:Lcom/google/common/collect/E;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    iput-object v5, v4, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    iput-object v5, v3, Lcom/google/common/collect/E;->c:Lcom/google/common/collect/C;

    :goto_2
    iget-object v5, v0, Lcom/google/common/collect/C;->c:Lcom/google/common/collect/C;

    if-eqz v5, :cond_3

    iput-object v4, v5, Lcom/google/common/collect/C;->d:Lcom/google/common/collect/C;

    goto :goto_3

    :cond_3
    iput-object v4, v3, Lcom/google/common/collect/E;->d:Lcom/google/common/collect/C;

    :goto_3
    iget-object v4, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iget-object v5, v3, Lcom/google/common/collect/E;->e:Lcom/google/common/collect/p;

    iget-object v6, v0, Lcom/google/common/collect/C;->a:Ljava/lang/Object;

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    if-nez v4, :cond_4

    invoke-virtual {v5, v6}, Lcom/google/common/collect/p;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/B;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput v1, v0, Lcom/google/common/collect/B;->c:I

    iget v0, v3, Lcom/google/common/collect/E;->g:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/google/common/collect/E;->g:I

    goto :goto_5

    :cond_4
    invoke-virtual {v5, v6}, Lcom/google/common/collect/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/B;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v1, Lcom/google/common/collect/B;->c:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/google/common/collect/B;->c:I

    iget-object v4, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v1, Lcom/google/common/collect/B;->a:Lcom/google/common/collect/C;

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    iput-object v5, v4, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    :goto_4
    iget-object v4, v0, Lcom/google/common/collect/C;->e:Lcom/google/common/collect/C;

    if-nez v4, :cond_6

    iget-object v0, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/common/collect/B;->b:Lcom/google/common/collect/C;

    goto :goto_5

    :cond_6
    iget-object v0, v0, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    iput-object v0, v4, Lcom/google/common/collect/C;->f:Lcom/google/common/collect/C;

    :goto_5
    iget v0, v3, Lcom/google/common/collect/E;->f:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/google/common/collect/E;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/D;->d:Lcom/google/common/collect/C;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/google/common/collect/C;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
