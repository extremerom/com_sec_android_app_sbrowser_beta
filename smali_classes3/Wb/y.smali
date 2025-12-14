.class public final LWb/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LWb/B;


# direct methods
.method public synthetic constructor <init>(LWb/B;I)V
    .locals 0

    iput p2, p0, LWb/y;->a:I

    iput-object p1, p0, LWb/y;->b:LWb/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LWb/y;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lrc/f;->o:Lrc/f;

    const/4 v1, 0x0

    iget-object p0, p0, LWb/y;->b:LWb/B;

    invoke-virtual {p0, v0, v1}, LWb/B;->h(Lrc/f;Lrc/l;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lrc/f;->q:Lrc/f;

    iget-object p0, p0, LWb/y;->b:LWb/B;

    invoke-virtual {p0, v0}, LWb/B;->o(Lrc/f;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lrc/f;->p:Lrc/f;

    const/4 v1, 0x0

    iget-object p0, p0, LWb/y;->b:LWb/B;

    invoke-virtual {p0, v0, v1}, LWb/B;->i(Lrc/f;Lrc/l;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, LWb/y;->b:LWb/B;

    invoke-virtual {p0}, LWb/B;->k()LWb/c;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, Lrc/f;->m:Lrc/f;

    sget-object v1, Lrc/o;->a:Lrc/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lrc/l;->b:Lrc/l;

    iget-object p0, p0, LWb/y;->b:LWb/B;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "kindFilter"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LRb/c;->WHEN_GET_ALL_DESCRIPTORS:LRb/c;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    sget v4, Lrc/f;->l:I

    invoke-virtual {v0, v4}, Lrc/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, LWb/B;->h(Lrc/f;Lrc/l;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/f;

    invoke-virtual {v1, v5}, Lrc/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v2}, Lrc/p;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object v5

    invoke-static {v3, v5}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v4, Lrc/f;->i:I

    invoke-virtual {v0, v4}, Lrc/f;->a(I)Z

    move-result v4

    iget-object v5, v0, Lrc/f;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, Lrc/b;->a:Lrc/b;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, v1}, LWb/B;->i(Lrc/f;Lrc/l;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhc/f;

    invoke-virtual {v1, v6}, Lrc/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v2}, LWb/B;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    sget v4, Lrc/f;->j:I

    invoke-virtual {v0, v4}, Lrc/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lrc/b;->a:Lrc/b;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, LWb/B;->o(Lrc/f;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhc/f;

    invoke-virtual {v1, v4}, Lrc/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, LWb/B;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
