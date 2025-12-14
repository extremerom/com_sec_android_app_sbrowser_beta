.class public final Lcc/U;
.super Lic/l;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Lcc/T;

.field public i:I

.field public j:Lcc/T;

.field public k:I

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;


# direct methods
.method public static f()Lcc/U;
    .locals 2

    new-instance v0, Lcc/U;

    invoke-direct {v0}, Lic/l;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lcc/U;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/U;->g:Ljava/util/List;

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/U;->h:Lcc/T;

    iput-object v1, v0, Lcc/U;->j:Lcc/T;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/U;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/U;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/U;->n:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/U;->e()Lcc/V;

    move-result-object p0

    invoke-virtual {p0}, Lcc/V;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcc/V;->q:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/V;

    invoke-direct {v1, p1, p2}, Lcc/V;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/U;->g(Lcc/V;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/V;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcc/U;->g(Lcc/V;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/V;

    invoke-virtual {p0, p1}, Lcc/U;->g(Lcc/V;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/U;->f()Lcc/U;

    move-result-object v0

    invoke-virtual {p0}, Lcc/U;->e()Lcc/V;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/U;->g(Lcc/V;)V

    return-object v0
.end method

.method public final e()Lcc/V;
    .locals 5

    new-instance v0, Lcc/V;

    invoke-direct {v0, p0}, Lcc/V;-><init>(Lcc/U;)V

    iget v1, p0, Lcc/U;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/U;->e:I

    iput v2, v0, Lcc/V;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcc/U;->f:I

    iput v2, v0, Lcc/V;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcc/U;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/U;->g:Ljava/util/List;

    iget v2, p0, Lcc/U;->d:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcc/U;->d:I

    :cond_2
    iget-object v2, p0, Lcc/U;->g:Ljava/util/List;

    iput-object v2, v0, Lcc/V;->f:Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object v2, p0, Lcc/U;->h:Lcc/T;

    iput-object v2, v0, Lcc/V;->g:Lcc/T;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    :cond_4
    iget v2, p0, Lcc/U;->i:I

    iput v2, v0, Lcc/V;->h:I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    iget-object v2, p0, Lcc/U;->j:Lcc/T;

    iput-object v2, v0, Lcc/V;->i:Lcc/T;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    iget v1, p0, Lcc/U;->k:I

    iput v1, v0, Lcc/V;->j:I

    iget v1, p0, Lcc/U;->d:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcc/U;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/U;->l:Ljava/util/List;

    iget v1, p0, Lcc/U;->d:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcc/U;->d:I

    :cond_7
    iget-object v1, p0, Lcc/U;->l:Ljava/util/List;

    iput-object v1, v0, Lcc/V;->k:Ljava/util/List;

    iget v1, p0, Lcc/U;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcc/U;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/U;->m:Ljava/util/List;

    iget v1, p0, Lcc/U;->d:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcc/U;->d:I

    :cond_8
    iget-object v1, p0, Lcc/U;->m:Ljava/util/List;

    iput-object v1, v0, Lcc/V;->l:Ljava/util/List;

    iget v1, p0, Lcc/U;->d:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcc/U;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/U;->n:Ljava/util/List;

    iget v1, p0, Lcc/U;->d:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcc/U;->d:I

    :cond_9
    iget-object p0, p0, Lcc/U;->n:Ljava/util/List;

    iput-object p0, v0, Lcc/V;->m:Ljava/util/List;

    iput v3, v0, Lcc/V;->c:I

    return-object v0
.end method

.method public final g(Lcc/V;)V
    .locals 4

    sget-object v0, Lcc/V;->p:Lcc/V;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/V;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/V;->d:I

    iget v3, p0, Lcc/U;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/U;->d:I

    iput v1, p0, Lcc/U;->e:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcc/V;->e:I

    iget v2, p0, Lcc/U;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/U;->d:I

    iput v0, p0, Lcc/U;->f:I

    :cond_2
    iget-object v0, p1, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcc/U;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcc/V;->f:Ljava/util/List;

    iput-object v0, p0, Lcc/U;->g:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcc/U;->d:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcc/U;->d:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/U;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/U;->g:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/U;->d:I

    :cond_4
    iget-object v0, p0, Lcc/U;->g:Ljava/util/List;

    iget-object v2, p1, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    iget v0, p1, Lcc/V;->c:I

    and-int/2addr v0, v1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Lcc/V;->g:Lcc/T;

    iget v1, p0, Lcc/U;->d:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcc/U;->h:Lcc/T;

    sget-object v3, Lcc/T;->t:Lcc/T;

    if-eq v1, v3, :cond_6

    invoke-static {v1}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v1}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/U;->h:Lcc/T;

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcc/U;->h:Lcc/T;

    :goto_1
    iget v0, p0, Lcc/U;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lcc/U;->d:I

    :cond_7
    iget v0, p1, Lcc/V;->c:I

    and-int/lit8 v1, v0, 0x8

    const/16 v3, 0x10

    if-ne v1, v2, :cond_8

    iget v1, p1, Lcc/V;->h:I

    iget v2, p0, Lcc/U;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/U;->d:I

    iput v1, p0, Lcc/U;->i:I

    :cond_8
    and-int/2addr v0, v3

    const/16 v1, 0x20

    if-ne v0, v3, :cond_a

    iget-object v0, p1, Lcc/V;->i:Lcc/T;

    iget v2, p0, Lcc/U;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcc/U;->j:Lcc/T;

    sget-object v3, Lcc/T;->t:Lcc/T;

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v2}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/U;->j:Lcc/T;

    goto :goto_2

    :cond_9
    iput-object v0, p0, Lcc/U;->j:Lcc/T;

    :goto_2
    iget v0, p0, Lcc/U;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/U;->d:I

    :cond_a
    iget v0, p1, Lcc/V;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    iget v0, p1, Lcc/V;->j:I

    iget v1, p0, Lcc/U;->d:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcc/U;->d:I

    iput v0, p0, Lcc/U;->k:I

    :cond_b
    iget-object v0, p1, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcc/U;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcc/V;->k:Ljava/util/List;

    iput-object v0, p0, Lcc/U;->l:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcc/U;->d:I

    goto :goto_3

    :cond_c
    iget v0, p0, Lcc/U;->d:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/U;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/U;->l:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/U;->d:I

    :cond_d
    iget-object v0, p0, Lcc/U;->l:Ljava/util/List;

    iget-object v1, p1, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_3
    iget-object v0, p1, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcc/U;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcc/V;->l:Ljava/util/List;

    iput-object v0, p0, Lcc/U;->m:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcc/U;->d:I

    goto :goto_4

    :cond_f
    iget v0, p0, Lcc/U;->d:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/U;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/U;->m:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/U;->d:I

    :cond_10
    iget-object v0, p0, Lcc/U;->m:Ljava/util/List;

    iget-object v1, p1, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    :goto_4
    iget-object v0, p1, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcc/U;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcc/V;->m:Ljava/util/List;

    iput-object v0, p0, Lcc/U;->n:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcc/U;->d:I

    goto :goto_5

    :cond_12
    iget v0, p0, Lcc/U;->d:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/U;->n:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/U;->n:Ljava/util/List;

    iget v0, p0, Lcc/U;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/U;->d:I

    :cond_13
    iget-object v0, p0, Lcc/U;->n:Ljava/util/List;

    iget-object v1, p1, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_14
    :goto_5
    invoke-virtual {p0, p1}, Lic/l;->d(Lic/m;)V

    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/V;->b:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
