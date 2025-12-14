.class public final Lcc/u;
.super Lic/l;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I


# virtual methods
.method public final a()Lic/b;
    .locals 3

    new-instance v0, Lcc/v;

    invoke-direct {v0, p0}, Lcc/v;-><init>(Lcc/u;)V

    iget v1, p0, Lcc/u;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget p0, p0, Lcc/u;->e:I

    iput p0, v0, Lcc/v;->d:I

    iput v2, v0, Lcc/v;->c:I

    invoke-virtual {v0}, Lcc/v;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcc/v;->h:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/v;

    invoke-direct {v1, p1, p2}, Lcc/v;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/u;->e(Lcc/v;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/v;
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

    invoke-virtual {p0, v0}, Lcc/u;->e(Lcc/v;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/v;

    invoke-virtual {p0, p1}, Lcc/u;->e(Lcc/v;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcc/u;

    invoke-direct {v0}, Lic/l;-><init>()V

    new-instance v1, Lcc/v;

    invoke-direct {v1, p0}, Lcc/v;-><init>(Lcc/u;)V

    iget v2, p0, Lcc/u;->d:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget p0, p0, Lcc/u;->e:I

    iput p0, v1, Lcc/v;->d:I

    iput v3, v1, Lcc/v;->c:I

    invoke-virtual {v0, v1}, Lcc/u;->e(Lcc/v;)V

    return-object v0
.end method

.method public final e(Lcc/v;)V
    .locals 3

    sget-object v0, Lcc/v;->g:Lcc/v;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/v;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcc/v;->d:I

    iget v2, p0, Lcc/u;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/u;->d:I

    iput v0, p0, Lcc/u;->e:I

    :cond_1
    invoke-virtual {p0, p1}, Lic/l;->d(Lic/m;)V

    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/v;->b:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
