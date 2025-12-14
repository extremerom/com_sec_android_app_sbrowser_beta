.class public final Lcc/F;
.super Lic/l;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:Lcc/N;

.field public f:Lcc/M;

.field public g:Lcc/E;

.field public h:Ljava/util/List;


# direct methods
.method public static f()Lcc/F;
    .locals 2

    new-instance v0, Lcc/F;

    invoke-direct {v0}, Lic/l;-><init>()V

    sget-object v1, Lcc/N;->e:Lcc/N;

    iput-object v1, v0, Lcc/F;->e:Lcc/N;

    sget-object v1, Lcc/M;->e:Lcc/M;

    iput-object v1, v0, Lcc/F;->f:Lcc/M;

    sget-object v1, Lcc/E;->k:Lcc/E;

    iput-object v1, v0, Lcc/F;->g:Lcc/E;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/F;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/F;->e()Lcc/G;

    move-result-object p0

    invoke-virtual {p0}, Lcc/G;->isInitialized()Z

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
    sget-object v1, Lcc/G;->k:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/G;

    invoke-direct {v1, p1, p2}, Lcc/G;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/F;->g(Lcc/G;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/G;
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

    invoke-virtual {p0, v0}, Lcc/F;->g(Lcc/G;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/G;

    invoke-virtual {p0, p1}, Lcc/F;->g(Lcc/G;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/F;->f()Lcc/F;

    move-result-object v0

    invoke-virtual {p0}, Lcc/F;->e()Lcc/G;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/F;->g(Lcc/G;)V

    return-object v0
.end method

.method public final e()Lcc/G;
    .locals 5

    new-instance v0, Lcc/G;

    invoke-direct {v0, p0}, Lcc/G;-><init>(Lcc/F;)V

    iget v1, p0, Lcc/F;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcc/F;->e:Lcc/N;

    iput-object v2, v0, Lcc/G;->d:Lcc/N;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcc/F;->f:Lcc/M;

    iput-object v2, v0, Lcc/G;->e:Lcc/M;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcc/F;->g:Lcc/E;

    iput-object v2, v0, Lcc/G;->f:Lcc/E;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcc/F;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/F;->h:Ljava/util/List;

    iget v1, p0, Lcc/F;->d:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcc/F;->d:I

    :cond_3
    iget-object p0, p0, Lcc/F;->h:Ljava/util/List;

    iput-object p0, v0, Lcc/G;->g:Ljava/util/List;

    iput v3, v0, Lcc/G;->c:I

    return-object v0
.end method

.method public final g(Lcc/G;)V
    .locals 5

    sget-object v0, Lcc/G;->j:Lcc/G;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/G;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcc/G;->d:Lcc/N;

    iget v2, p0, Lcc/F;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcc/F;->e:Lcc/N;

    sget-object v3, Lcc/N;->e:Lcc/N;

    if-eq v2, v3, :cond_1

    new-instance v3, Lcc/o;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcc/o;-><init>(I)V

    sget-object v4, Lic/u;->b:Lic/H;

    iput-object v4, v3, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcc/o;->j(Lcc/N;)V

    invoke-virtual {v3, v0}, Lcc/o;->j(Lcc/N;)V

    invoke-virtual {v3}, Lcc/o;->f()Lcc/N;

    move-result-object v0

    iput-object v0, p0, Lcc/F;->e:Lcc/N;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcc/F;->e:Lcc/N;

    :goto_0
    iget v0, p0, Lcc/F;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/F;->d:I

    :cond_2
    iget v0, p1, Lcc/G;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcc/G;->e:Lcc/M;

    iget v2, p0, Lcc/F;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcc/F;->f:Lcc/M;

    sget-object v3, Lcc/M;->e:Lcc/M;

    if-eq v2, v3, :cond_3

    new-instance v3, Lcc/o;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v3, v2}, Lcc/o;->i(Lcc/M;)V

    invoke-virtual {v3, v0}, Lcc/o;->i(Lcc/M;)V

    invoke-virtual {v3}, Lcc/o;->e()Lcc/M;

    move-result-object v0

    iput-object v0, p0, Lcc/F;->f:Lcc/M;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcc/F;->f:Lcc/M;

    :goto_1
    iget v0, p0, Lcc/F;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/F;->d:I

    :cond_4
    iget v0, p1, Lcc/G;->c:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcc/G;->f:Lcc/E;

    iget v2, p0, Lcc/F;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcc/F;->g:Lcc/E;

    sget-object v3, Lcc/E;->k:Lcc/E;

    if-eq v2, v3, :cond_5

    invoke-static {}, Lcc/D;->f()Lcc/D;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcc/D;->g(Lcc/E;)V

    invoke-virtual {v3, v0}, Lcc/D;->g(Lcc/E;)V

    invoke-virtual {v3}, Lcc/D;->e()Lcc/E;

    move-result-object v0

    iput-object v0, p0, Lcc/F;->g:Lcc/E;

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lcc/F;->g:Lcc/E;

    :goto_2
    iget v0, p0, Lcc/F;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/F;->d:I

    :cond_6
    iget-object v0, p1, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcc/F;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcc/G;->g:Ljava/util/List;

    iput-object v0, p0, Lcc/F;->h:Ljava/util/List;

    iget v0, p0, Lcc/F;->d:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcc/F;->d:I

    goto :goto_3

    :cond_7
    iget v0, p0, Lcc/F;->d:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/F;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/F;->h:Ljava/util/List;

    iget v0, p0, Lcc/F;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/F;->d:I

    :cond_8
    iget-object v0, p0, Lcc/F;->h:Ljava/util/List;

    iget-object v1, p1, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lic/l;->d(Lic/m;)V

    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/G;->b:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
