.class public final Lcc/o;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcc/o;->b:I

    invoke-direct {p0}, Lic/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    iget v0, p0, Lcc/o;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcc/o;->f()Lcc/N;

    move-result-object p0

    invoke-virtual {p0}, Lcc/N;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcc/o;->g()Lcc/g0;

    move-result-object p0

    invoke-virtual {p0}, Lcc/g0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lcc/o;->e()Lcc/M;

    move-result-object p0

    invoke-virtual {p0}, Lcc/M;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Lcc/o;->d()Lcc/p;

    move-result-object p0

    invoke-virtual {p0}, Lcc/p;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;
    .locals 2

    iget v0, p0, Lcc/o;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Lcc/N;->f:Lcc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcc/N;

    invoke-direct {v0, p1}, Lcc/N;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcc/o;->j(Lcc/N;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, Lic/t;->a:Lic/b;

    check-cast v0, Lcc/N;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcc/o;->j(Lcc/N;)V

    :cond_0
    throw p1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcc/g0;->f:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/g0;

    invoke-direct {v1, p1, p2}, Lcc/g0;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_3
    .catch Lic/t; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, v1}, Lcc/o;->k(Lcc/g0;)V

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/g0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcc/o;->k(Lcc/g0;)V

    :cond_1
    throw p1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_6
    sget-object v1, Lcc/M;->f:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/M;

    invoke-direct {v1, p1, p2}, Lcc/M;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_6
    .catch Lic/t; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-virtual {p0, v1}, Lcc/o;->i(Lcc/M;)V

    return-object p0

    :catchall_4
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_7
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/M;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p1

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcc/o;->i(Lcc/M;)V

    :cond_2
    throw p1

    :pswitch_2
    const/4 v0, 0x0

    :try_start_9
    sget-object v1, Lcc/p;->f:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/p;

    invoke-direct {v1, p1, p2}, Lcc/p;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_9
    .catch Lic/t; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    invoke-virtual {p0, v1}, Lcc/o;->h(Lcc/p;)V

    return-object p0

    :catchall_6
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_a
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/p;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    move-object v0, p2

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcc/o;->h(Lcc/p;)V

    :cond_3
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 1

    iget v0, p0, Lcc/o;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcc/N;

    invoke-virtual {p0, p1}, Lcc/o;->j(Lcc/N;)V

    return-object p0

    :pswitch_0
    check-cast p1, Lcc/g0;

    invoke-virtual {p0, p1}, Lcc/o;->k(Lcc/g0;)V

    return-object p0

    :pswitch_1
    check-cast p1, Lcc/M;

    invoke-virtual {p0, p1}, Lcc/o;->i(Lcc/M;)V

    return-object p0

    :pswitch_2
    check-cast p1, Lcc/p;

    invoke-virtual {p0, p1}, Lcc/o;->h(Lcc/p;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcc/o;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcc/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcc/o;-><init>(I)V

    sget-object v1, Lic/u;->b:Lic/H;

    iput-object v1, v0, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcc/o;->f()Lcc/N;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/o;->j(Lcc/N;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcc/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcc/o;->g()Lcc/g0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/o;->k(Lcc/g0;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcc/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcc/o;->e()Lcc/M;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/o;->i(Lcc/M;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcc/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcc/o;->d()Lcc/p;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/o;->h(Lcc/p;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lcc/p;
    .locals 3

    new-instance v0, Lcc/p;

    invoke-direct {v0, p0}, Lcc/p;-><init>(Lcc/o;)V

    iget v1, p0, Lcc/o;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcc/o;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/o;->d:Ljava/util/List;

    iget v1, p0, Lcc/o;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcc/o;->c:I

    :cond_0
    iget-object p0, p0, Lcc/o;->d:Ljava/util/List;

    iput-object p0, v0, Lcc/p;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcc/M;
    .locals 3

    new-instance v0, Lcc/M;

    invoke-direct {v0, p0}, Lcc/M;-><init>(Lcc/o;)V

    iget v1, p0, Lcc/o;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcc/o;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/o;->d:Ljava/util/List;

    iget v1, p0, Lcc/o;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcc/o;->c:I

    :cond_0
    iget-object p0, p0, Lcc/o;->d:Ljava/util/List;

    iput-object p0, v0, Lcc/M;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcc/N;
    .locals 3

    new-instance v0, Lcc/N;

    invoke-direct {v0, p0}, Lcc/N;-><init>(Lcc/o;)V

    iget v1, p0, Lcc/o;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcc/o;->d:Ljava/util/List;

    check-cast v1, Lic/v;

    invoke-interface {v1}, Lic/v;->c()Lic/H;

    move-result-object v1

    iput-object v1, p0, Lcc/o;->d:Ljava/util/List;

    iget v1, p0, Lcc/o;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcc/o;->c:I

    :cond_0
    iget-object p0, p0, Lcc/o;->d:Ljava/util/List;

    check-cast p0, Lic/v;

    iput-object p0, v0, Lcc/N;->b:Lic/v;

    return-object v0
.end method

.method public g()Lcc/g0;
    .locals 3

    new-instance v0, Lcc/g0;

    invoke-direct {v0, p0}, Lcc/g0;-><init>(Lcc/o;)V

    iget v1, p0, Lcc/o;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcc/o;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/o;->d:Ljava/util/List;

    iget v1, p0, Lcc/o;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcc/o;->c:I

    :cond_0
    iget-object p0, p0, Lcc/o;->d:Ljava/util/List;

    iput-object p0, v0, Lcc/g0;->b:Ljava/util/List;

    return-object v0
.end method

.method public h(Lcc/p;)V
    .locals 3

    sget-object v0, Lcc/p;->e:Lcc/p;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcc/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcc/p;->b:Ljava/util/List;

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcc/o;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcc/o;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/o;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/o;->c:I

    :cond_2
    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget-object v1, p1, Lcc/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/p;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method

.method public i(Lcc/M;)V
    .locals 3

    sget-object v0, Lcc/M;->e:Lcc/M;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcc/M;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcc/M;->b:Ljava/util/List;

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcc/o;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcc/o;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/o;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/o;->c:I

    :cond_2
    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget-object v1, p1, Lcc/M;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/M;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method

.method public j(Lcc/N;)V
    .locals 3

    sget-object v0, Lcc/N;->e:Lcc/N;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcc/N;->b:Lic/v;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    check-cast v0, Lic/v;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcc/N;->b:Lic/v;

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcc/o;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcc/o;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Lic/u;

    iget-object v2, p0, Lcc/o;->d:Ljava/util/List;

    check-cast v2, Lic/v;

    invoke-direct {v0, v2}, Lic/u;-><init>(Lic/v;)V

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/o;->c:I

    :cond_2
    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    check-cast v0, Lic/v;

    iget-object v1, p1, Lcc/N;->b:Lic/v;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/N;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method

.method public k(Lcc/g0;)V
    .locals 3

    sget-object v0, Lcc/g0;->e:Lcc/g0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcc/g0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcc/g0;->b:Ljava/util/List;

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcc/o;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcc/o;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/o;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget v0, p0, Lcc/o;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/o;->c:I

    :cond_2
    iget-object v0, p0, Lcc/o;->d:Ljava/util/List;

    iget-object v1, p1, Lcc/g0;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/g0;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
