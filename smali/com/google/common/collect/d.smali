.class public Lcom/google/common/collect/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/Iterator;

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/e;->c:Lcom/google/common/collect/p;

    invoke-virtual {p1}, Lcom/google/common/collect/p;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/f;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/i;->b:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/i;Ljava/util/ListIterator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/common/collect/i;->b:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/i;

    invoke-virtual {v0}, Lcom/google/common/collect/i;->i()V

    iget-object v0, v0, Lcom/google/common/collect/i;->b:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/common/collect/d;->b()V

    iget-object p0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/google/common/collect/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/common/collect/d;->b()V

    iget-object p0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/common/collect/g;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/l;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/i;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/common/collect/i;

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/google/common/collect/i;-><init>(Lcom/google/common/collect/l;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/i;)V

    :goto_0
    new-instance p0, Lcom/google/common/collect/r;

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/google/common/collect/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/i;

    iget-object v0, p0, Lcom/google/common/collect/i;->e:Lcom/google/common/collect/l;

    iget v1, v0, Lcom/google/common/collect/l;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/l;->d:I

    invoke-virtual {p0}, Lcom/google/common/collect/i;->l()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/C;->j(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/f;

    iget-object v1, v1, Lcom/google/common/collect/f;->b:Lcom/google/common/collect/l;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, v1, Lcom/google/common/collect/l;->d:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/google/common/collect/l;->d:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/C;->j(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/common/collect/d;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/e;

    iget-object v0, v0, Lcom/google/common/collect/e;->d:Lcom/google/common/collect/l;

    iget-object v1, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, v0, Lcom/google/common/collect/l;->d:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/common/collect/l;->d:I

    iget-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/d;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
