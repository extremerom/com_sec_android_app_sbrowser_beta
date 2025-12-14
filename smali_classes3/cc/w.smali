.class public final Lcc/w;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lcc/x;

.field public f:Lcc/T;

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;


# direct methods
.method public static e()Lcc/w;
    .locals 2

    new-instance v0, Lcc/w;

    invoke-direct {v0}, Lic/k;-><init>()V

    sget-object v1, Lcc/x;->TRUE:Lcc/x;

    iput-object v1, v0, Lcc/w;->e:Lcc/x;

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/w;->f:Lcc/T;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/w;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/w;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/w;->d()Lcc/y;

    move-result-object p0

    invoke-virtual {p0}, Lcc/y;->isInitialized()Z

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
    sget-object v1, Lcc/y;->m:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/y;

    invoke-direct {v1, p1, p2}, Lcc/y;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/w;->f(Lcc/y;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/y;
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

    invoke-virtual {p0, v0}, Lcc/w;->f(Lcc/y;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/y;

    invoke-virtual {p0, p1}, Lcc/w;->f(Lcc/y;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/w;->e()Lcc/w;

    move-result-object v0

    invoke-virtual {p0}, Lcc/w;->d()Lcc/y;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/w;->f(Lcc/y;)V

    return-object v0
.end method

.method public final d()Lcc/y;
    .locals 5

    new-instance v0, Lcc/y;

    invoke-direct {v0, p0}, Lcc/y;-><init>(Lcc/w;)V

    iget v1, p0, Lcc/w;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/w;->c:I

    iput v2, v0, Lcc/y;->c:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcc/w;->d:I

    iput v2, v0, Lcc/y;->d:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcc/w;->e:Lcc/x;

    iput-object v2, v0, Lcc/y;->e:Lcc/x;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcc/w;->f:Lcc/T;

    iput-object v2, v0, Lcc/y;->f:Lcc/T;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcc/w;->g:I

    iput v2, v0, Lcc/y;->g:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcc/w;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/w;->h:Ljava/util/List;

    iget v1, p0, Lcc/w;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcc/w;->b:I

    :cond_5
    iget-object v1, p0, Lcc/w;->h:Ljava/util/List;

    iput-object v1, v0, Lcc/y;->h:Ljava/util/List;

    iget v1, p0, Lcc/w;->b:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcc/w;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/w;->i:Ljava/util/List;

    iget v1, p0, Lcc/w;->b:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcc/w;->b:I

    :cond_6
    iget-object p0, p0, Lcc/w;->i:Ljava/util/List;

    iput-object p0, v0, Lcc/y;->i:Ljava/util/List;

    iput v3, v0, Lcc/y;->b:I

    return-object v0
.end method

.method public final f(Lcc/y;)V
    .locals 4

    sget-object v0, Lcc/y;->l:Lcc/y;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/y;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/y;->c:I

    iget v3, p0, Lcc/w;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/w;->b:I

    iput v1, p0, Lcc/w;->c:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcc/y;->d:I

    iget v3, p0, Lcc/w;->b:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/w;->b:I

    iput v1, p0, Lcc/w;->d:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcc/y;->e:Lcc/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcc/w;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/w;->b:I

    iput-object v0, p0, Lcc/w;->e:Lcc/x;

    :cond_3
    iget v0, p1, Lcc/y;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcc/y;->f:Lcc/T;

    iget v2, p0, Lcc/w;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcc/w;->f:Lcc/T;

    sget-object v3, Lcc/T;->t:Lcc/T;

    if-eq v2, v3, :cond_4

    invoke-static {v2}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v2}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/w;->f:Lcc/T;

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcc/w;->f:Lcc/T;

    :goto_0
    iget v0, p0, Lcc/w;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/w;->b:I

    :cond_5
    iget v0, p1, Lcc/y;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcc/y;->g:I

    iget v2, p0, Lcc/w;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/w;->b:I

    iput v0, p0, Lcc/w;->g:I

    :cond_6
    iget-object v0, p1, Lcc/y;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcc/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcc/y;->h:Ljava/util/List;

    iput-object v0, p0, Lcc/w;->h:Ljava/util/List;

    iget v0, p0, Lcc/w;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcc/w;->b:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcc/w;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/w;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/w;->h:Ljava/util/List;

    iget v0, p0, Lcc/w;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/w;->b:I

    :cond_8
    iget-object v0, p0, Lcc/w;->h:Ljava/util/List;

    iget-object v1, p1, Lcc/y;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_1
    iget-object v0, p1, Lcc/y;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcc/w;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcc/y;->i:Ljava/util/List;

    iput-object v0, p0, Lcc/w;->i:Ljava/util/List;

    iget v0, p0, Lcc/w;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcc/w;->b:I

    goto :goto_2

    :cond_a
    iget v0, p0, Lcc/w;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/w;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/w;->i:Ljava/util/List;

    iget v0, p0, Lcc/w;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/w;->b:I

    :cond_b
    iget-object v0, p0, Lcc/w;->i:Ljava/util/List;

    iget-object v1, p1, Lcc/y;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_2
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/y;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
