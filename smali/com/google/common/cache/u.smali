.class public final Lcom/google/common/cache/u;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/common/cache/P;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/common/cache/P;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/P;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/cache/u;->b:I

    iput-object p1, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    iput-object p1, p0, Lcom/google/common/cache/u;->a:Lcom/google/common/cache/P;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/u;->a:Lcom/google/common/cache/P;

    invoke-virtual {p0}, Lcom/google/common/cache/P;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/google/common/cache/u;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/P;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/common/cache/P;->f:Lcom/google/common/base/n;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/u;->a:Lcom/google/common/cache/P;

    invoke-virtual {p0}, Lcom/google/common/cache/P;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/google/common/cache/u;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/cache/t;

    iget-object p0, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/t;-><init>(Lcom/google/common/cache/P;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/google/common/cache/t;

    iget-object p0, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/t;-><init>(Lcom/google/common/cache/P;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/google/common/cache/u;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/common/cache/u;->c:Lcom/google/common/cache/P;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/cache/P;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/u;->a:Lcom/google/common/cache/P;

    invoke-virtual {p0}, Lcom/google/common/cache/P;->size()I

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/cache/P;->a(Ljava/util/AbstractCollection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/cache/P;->a(Ljava/util/AbstractCollection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
