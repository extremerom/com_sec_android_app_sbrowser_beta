.class public final LRd/e;
.super LRd/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LRd/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LQd/n;LQd/n;)Z
    .locals 6

    iget p0, p0, LRd/e;->a:I

    packed-switch p0, :pswitch_data_0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    instance-of p0, p2, LQd/v;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, LQd/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/u;

    instance-of v2, v1, LQd/w;

    if-eqz v2, :cond_2

    check-cast v1, LQd/w;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/w;

    new-instance v2, LQd/v;

    iget-object v3, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v3, v3, Lorg/jsoup/parser/F;->a:Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/E;->d:Lorg/jsoup/parser/E;

    invoke-static {v3, v4}, Lorg/jsoup/parser/F;->a(Ljava/lang/String;Lorg/jsoup/parser/E;)Lorg/jsoup/parser/F;

    move-result-object v3

    invoke-virtual {p2}, LQd/n;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, LQd/n;->e()LQd/c;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, LQd/n;-><init>(Lorg/jsoup/parser/F;Ljava/lang/String;LQd/c;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, LQd/u;->a:LQd/u;

    invoke-static {v3}, LOd/b;->g(Ljava/lang/Object;)V

    iget-object v3, v0, LQd/u;->a:LQd/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, LQd/u;->a:LQd/u;

    if-ne v4, v3, :cond_4

    move v1, p1

    :cond_4
    invoke-static {v1}, LOd/b;->d(Z)V

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v2, LQd/u;->a:LQd/u;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, LQd/u;->x(LQd/u;)V

    :cond_6
    iget v1, v0, LQd/u;->b:I

    invoke-virtual {v3}, LQd/u;->k()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v2, LQd/u;->a:LQd/u;

    iput v1, v2, LQd/u;->b:I

    const/4 v1, 0x0

    iput-object v1, v0, LQd/u;->a:LQd/u;

    :goto_3
    invoke-virtual {v2, v0}, LQd/n;->z(LQd/u;)V

    goto :goto_2

    :cond_7
    move p1, v1

    :goto_4
    return p1

    :pswitch_1
    instance-of p0, p1, LQd/j;

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, LQd/n;->B()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, LQd/n;

    :cond_8
    if-ne p2, p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    :pswitch_2
    iget-object p0, p2, LQd/u;->a:LQd/u;

    check-cast p0, LQd/n;

    const/4 p1, 0x0

    if-eqz p0, :cond_d

    instance-of v0, p0, LQd/j;

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, LQd/n;->C()LRd/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, p1

    :cond_b
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/n;

    iget-object v1, v1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v2, p2, LQd/n;->d:Lorg/jsoup/parser/F;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/F;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    const/4 p0, 0x1

    if-ne v0, p0, :cond_d

    move p1, p0

    :cond_d
    :goto_6
    return p1

    :pswitch_3
    iget-object p0, p2, LQd/u;->a:LQd/u;

    move-object p1, p0

    check-cast p1, LQd/n;

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    instance-of p1, p1, LQd/j;

    if-nez p1, :cond_11

    const/4 p1, 0x1

    if-nez p0, :cond_e

    new-instance p0, LRd/d;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_8

    :cond_e
    check-cast p0, LQd/n;

    invoke-virtual {p0}, LQd/n;->B()Ljava/util/List;

    move-result-object p0

    new-instance v1, LRd/d;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQd/n;

    if-eq v2, p2, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    move-object p0, v1

    :goto_8
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_11

    move v0, p1

    :cond_11
    return v0

    :pswitch_4
    iget-object p0, p2, LQd/u;->a:LQd/u;

    check-cast p0, LQd/n;

    if-eqz p0, :cond_12

    instance-of p1, p0, LQd/j;

    if-nez p1, :cond_12

    invoke-virtual {p2}, LQd/n;->F()I

    move-result p1

    invoke-virtual {p0}, LQd/n;->C()LRd/d;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    if-ne p1, p0, :cond_12

    goto :goto_9

    :cond_12
    const/4 p2, 0x0

    :goto_9
    return p2

    :pswitch_5
    iget-object p0, p2, LQd/u;->a:LQd/u;

    check-cast p0, LQd/n;

    if-eqz p0, :cond_13

    instance-of p0, p0, LQd/j;

    if-nez p0, :cond_13

    invoke-virtual {p2}, LQd/n;->F()I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_a

    :cond_13
    const/4 p0, 0x0

    :goto_a
    return p0

    :pswitch_6
    invoke-virtual {p2}, LQd/n;->g()I

    move-result p0

    if-nez p0, :cond_14

    sget-object p0, LQd/u;->c:Ljava/util/List;

    goto :goto_b

    :cond_14
    invoke-virtual {p2}, LQd/n;->k()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQd/u;

    instance-of p2, p1, LQd/e;

    if-nez p2, :cond_15

    instance-of p2, p1, LQd/x;

    if-nez p2, :cond_15

    instance-of p1, p1, LQd/k;

    if-nez p1, :cond_15

    const/4 p0, 0x0

    goto :goto_c

    :cond_16
    const/4 p0, 0x1

    :goto_c
    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LRd/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, ":matchText"

    return-object p0

    :pswitch_1
    const-string p0, ":root"

    return-object p0

    :pswitch_2
    const-string p0, ":only-of-type"

    return-object p0

    :pswitch_3
    const-string p0, ":only-child"

    return-object p0

    :pswitch_4
    const-string p0, ":last-child"

    return-object p0

    :pswitch_5
    const-string p0, ":first-child"

    return-object p0

    :pswitch_6
    const-string p0, ":empty"

    return-object p0

    :pswitch_7
    const-string p0, "*"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
