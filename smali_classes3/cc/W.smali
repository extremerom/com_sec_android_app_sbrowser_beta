.class public final Lcc/W;
.super Lic/l;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lcc/X;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;


# direct methods
.method public static f()Lcc/W;
    .locals 2

    new-instance v0, Lcc/W;

    invoke-direct {v0}, Lic/l;-><init>()V

    sget-object v1, Lcc/X;->INV:Lcc/X;

    iput-object v1, v0, Lcc/W;->h:Lcc/X;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/W;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/W;->j:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/W;->e()Lcc/Y;

    move-result-object p0

    invoke-virtual {p0}, Lcc/Y;->isInitialized()Z

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
    sget-object v1, Lcc/Y;->n:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/Y;

    invoke-direct {v1, p1, p2}, Lcc/Y;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/W;->g(Lcc/Y;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/Y;
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

    invoke-virtual {p0, v0}, Lcc/W;->g(Lcc/Y;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/Y;

    invoke-virtual {p0, p1}, Lcc/W;->g(Lcc/Y;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/W;->f()Lcc/W;

    move-result-object v0

    invoke-virtual {p0}, Lcc/W;->e()Lcc/Y;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/W;->g(Lcc/Y;)V

    return-object v0
.end method

.method public final e()Lcc/Y;
    .locals 5

    new-instance v0, Lcc/Y;

    invoke-direct {v0, p0}, Lcc/Y;-><init>(Lcc/W;)V

    iget v1, p0, Lcc/W;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/W;->e:I

    iput v2, v0, Lcc/Y;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcc/W;->f:I

    iput v2, v0, Lcc/Y;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-boolean v2, p0, Lcc/W;->g:Z

    iput-boolean v2, v0, Lcc/Y;->f:Z

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lcc/W;->h:Lcc/X;

    iput-object v2, v0, Lcc/Y;->g:Lcc/X;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcc/W;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/W;->i:Ljava/util/List;

    iget v1, p0, Lcc/W;->d:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcc/W;->d:I

    :cond_4
    iget-object v1, p0, Lcc/W;->i:Ljava/util/List;

    iput-object v1, v0, Lcc/Y;->h:Ljava/util/List;

    iget v1, p0, Lcc/W;->d:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcc/W;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/W;->j:Ljava/util/List;

    iget v1, p0, Lcc/W;->d:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcc/W;->d:I

    :cond_5
    iget-object p0, p0, Lcc/W;->j:Ljava/util/List;

    iput-object p0, v0, Lcc/Y;->i:Ljava/util/List;

    iput v3, v0, Lcc/Y;->c:I

    return-object v0
.end method

.method public final g(Lcc/Y;)V
    .locals 4

    sget-object v0, Lcc/Y;->m:Lcc/Y;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/Y;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/Y;->d:I

    iget v3, p0, Lcc/W;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/W;->d:I

    iput v1, p0, Lcc/W;->e:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcc/Y;->e:I

    iget v3, p0, Lcc/W;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/W;->d:I

    iput v1, p0, Lcc/W;->f:I

    :cond_2
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-boolean v1, p1, Lcc/Y;->f:Z

    iget v3, p0, Lcc/W;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/W;->d:I

    iput-boolean v1, p0, Lcc/W;->g:Z

    :cond_3
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcc/Y;->g:Lcc/X;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcc/W;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/W;->d:I

    iput-object v0, p0, Lcc/W;->h:Lcc/X;

    :cond_4
    iget-object v0, p1, Lcc/Y;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcc/W;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcc/Y;->h:Ljava/util/List;

    iput-object v0, p0, Lcc/W;->i:Ljava/util/List;

    iget v0, p0, Lcc/W;->d:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcc/W;->d:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcc/W;->d:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/W;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/W;->i:Ljava/util/List;

    iget v0, p0, Lcc/W;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/W;->d:I

    :cond_6
    iget-object v0, p0, Lcc/W;->i:Ljava/util/List;

    iget-object v1, p1, Lcc/Y;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_0
    iget-object v0, p1, Lcc/Y;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcc/W;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcc/Y;->i:Ljava/util/List;

    iput-object v0, p0, Lcc/W;->j:Ljava/util/List;

    iget v0, p0, Lcc/W;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcc/W;->d:I

    goto :goto_1

    :cond_8
    iget v0, p0, Lcc/W;->d:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/W;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/W;->j:Ljava/util/List;

    iget v0, p0, Lcc/W;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/W;->d:I

    :cond_9
    iget-object v0, p0, Lcc/W;->j:Ljava/util/List;

    iget-object v1, p1, Lcc/Y;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_1
    invoke-virtual {p0, p1}, Lic/l;->d(Lic/m;)V

    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/Y;->b:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
