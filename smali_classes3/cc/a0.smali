.class public final Lcc/a0;
.super Lic/l;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:Lcc/T;

.field public h:I

.field public i:Lcc/T;

.field public j:I


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/a0;->e()Lcc/b0;

    move-result-object p0

    invoke-virtual {p0}, Lcc/b0;->isInitialized()Z

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
    sget-object v1, Lcc/b0;->m:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/b0;

    invoke-direct {v1, p1, p2}, Lcc/b0;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/a0;->f(Lcc/b0;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/b0;
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

    invoke-virtual {p0, v0}, Lcc/a0;->f(Lcc/b0;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/b0;

    invoke-virtual {p0, p1}, Lcc/a0;->f(Lcc/b0;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcc/a0;

    invoke-direct {v0}, Lic/l;-><init>()V

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/a0;->g:Lcc/T;

    iput-object v1, v0, Lcc/a0;->i:Lcc/T;

    invoke-virtual {p0}, Lcc/a0;->e()Lcc/b0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/a0;->f(Lcc/b0;)V

    return-object v0
.end method

.method public final e()Lcc/b0;
    .locals 5

    new-instance v0, Lcc/b0;

    invoke-direct {v0, p0}, Lcc/b0;-><init>(Lcc/a0;)V

    iget v1, p0, Lcc/a0;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/a0;->e:I

    iput v2, v0, Lcc/b0;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcc/a0;->f:I

    iput v2, v0, Lcc/b0;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcc/a0;->g:Lcc/T;

    iput-object v2, v0, Lcc/b0;->f:Lcc/T;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcc/a0;->h:I

    iput v2, v0, Lcc/b0;->g:I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object v2, p0, Lcc/a0;->i:Lcc/T;

    iput-object v2, v0, Lcc/b0;->h:Lcc/T;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget p0, p0, Lcc/a0;->j:I

    iput p0, v0, Lcc/b0;->i:I

    iput v3, v0, Lcc/b0;->c:I

    return-object v0
.end method

.method public final f(Lcc/b0;)V
    .locals 4

    sget-object v0, Lcc/b0;->l:Lcc/b0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/b0;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/b0;->d:I

    iget v3, p0, Lcc/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/a0;->d:I

    iput v1, p0, Lcc/a0;->e:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcc/b0;->e:I

    iget v3, p0, Lcc/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/a0;->d:I

    iput v1, p0, Lcc/a0;->f:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcc/b0;->f:Lcc/T;

    iget v2, p0, Lcc/a0;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcc/a0;->g:Lcc/T;

    sget-object v3, Lcc/T;->t:Lcc/T;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v2}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/a0;->g:Lcc/T;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcc/a0;->g:Lcc/T;

    :goto_0
    iget v0, p0, Lcc/a0;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/a0;->d:I

    :cond_4
    iget v0, p1, Lcc/b0;->c:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    iget v1, p1, Lcc/b0;->g:I

    iget v3, p0, Lcc/a0;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/a0;->d:I

    iput v1, p0, Lcc/a0;->h:I

    :cond_5
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Lcc/b0;->h:Lcc/T;

    iget v2, p0, Lcc/a0;->d:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lcc/a0;->i:Lcc/T;

    sget-object v3, Lcc/T;->t:Lcc/T;

    if-eq v2, v3, :cond_6

    invoke-static {v2}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v2}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/a0;->i:Lcc/T;

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcc/a0;->i:Lcc/T;

    :goto_1
    iget v0, p0, Lcc/a0;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/a0;->d:I

    :cond_7
    iget v0, p1, Lcc/b0;->c:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget v0, p1, Lcc/b0;->i:I

    iget v2, p0, Lcc/a0;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/a0;->d:I

    iput v0, p0, Lcc/a0;->j:I

    :cond_8
    invoke-virtual {p0, p1}, Lic/l;->d(Lic/m;)V

    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/b0;->b:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
