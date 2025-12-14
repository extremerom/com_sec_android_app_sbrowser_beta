.class public final Lfc/d;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public b:I

.field public c:Lfc/b;

.field public d:Lfc/c;

.field public e:Lfc/c;

.field public f:Lfc/c;

.field public g:Lfc/c;


# direct methods
.method public static e()Lfc/d;
    .locals 2

    new-instance v0, Lfc/d;

    invoke-direct {v0}, Lic/k;-><init>()V

    sget-object v1, Lfc/b;->g:Lfc/b;

    iput-object v1, v0, Lfc/d;->c:Lfc/b;

    sget-object v1, Lfc/c;->g:Lfc/c;

    iput-object v1, v0, Lfc/d;->d:Lfc/c;

    iput-object v1, v0, Lfc/d;->e:Lfc/c;

    iput-object v1, v0, Lfc/d;->f:Lfc/c;

    iput-object v1, v0, Lfc/d;->g:Lfc/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lfc/d;->d()Lfc/e;

    move-result-object p0

    invoke-virtual {p0}, Lfc/e;->isInitialized()Z

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
    sget-object v1, Lfc/e;->k:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfc/e;

    invoke-direct {v1, p1, p2}, Lfc/e;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lfc/d;->f(Lfc/e;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lfc/e;
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

    invoke-virtual {p0, v0}, Lfc/d;->f(Lfc/e;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lfc/e;

    invoke-virtual {p0, p1}, Lfc/d;->f(Lfc/e;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lfc/d;->e()Lfc/d;

    move-result-object v0

    invoke-virtual {p0}, Lfc/d;->d()Lfc/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfc/d;->f(Lfc/e;)V

    return-object v0
.end method

.method public final d()Lfc/e;
    .locals 5

    new-instance v0, Lfc/e;

    invoke-direct {v0, p0}, Lfc/e;-><init>(Lfc/d;)V

    iget v1, p0, Lfc/d;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lfc/d;->c:Lfc/b;

    iput-object v2, v0, Lfc/e;->c:Lfc/b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lfc/d;->d:Lfc/c;

    iput-object v2, v0, Lfc/e;->d:Lfc/c;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lfc/d;->e:Lfc/c;

    iput-object v2, v0, Lfc/e;->e:Lfc/c;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget-object v2, p0, Lfc/d;->f:Lfc/c;

    iput-object v2, v0, Lfc/e;->f:Lfc/c;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget-object p0, p0, Lfc/d;->g:Lfc/c;

    iput-object p0, v0, Lfc/e;->g:Lfc/c;

    iput v3, v0, Lfc/e;->b:I

    return-object v0
.end method

.method public final f(Lfc/e;)V
    .locals 5

    sget-object v0, Lfc/e;->j:Lfc/e;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lfc/e;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lfc/e;->c:Lfc/b;

    iget v2, p0, Lfc/d;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lfc/d;->c:Lfc/b;

    sget-object v3, Lfc/b;->g:Lfc/b;

    if-eq v2, v3, :cond_1

    new-instance v3, Lfc/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lfc/a;-><init>(I)V

    invoke-virtual {v3, v2}, Lfc/a;->f(Lfc/b;)V

    invoke-virtual {v3, v0}, Lfc/a;->f(Lfc/b;)V

    invoke-virtual {v3}, Lfc/a;->d()Lfc/b;

    move-result-object v0

    iput-object v0, p0, Lfc/d;->c:Lfc/b;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lfc/d;->c:Lfc/b;

    :goto_0
    iget v0, p0, Lfc/d;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/d;->b:I

    :cond_2
    iget v0, p1, Lfc/e;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lfc/e;->d:Lfc/c;

    iget v2, p0, Lfc/d;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lfc/d;->d:Lfc/c;

    sget-object v3, Lfc/c;->g:Lfc/c;

    if-eq v2, v3, :cond_3

    invoke-static {v2}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v2}, Lfc/a;->e()Lfc/c;

    move-result-object v0

    iput-object v0, p0, Lfc/d;->d:Lfc/c;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lfc/d;->d:Lfc/c;

    :goto_1
    iget v0, p0, Lfc/d;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/d;->b:I

    :cond_4
    iget v0, p1, Lfc/e;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lfc/e;->e:Lfc/c;

    iget v2, p0, Lfc/d;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lfc/d;->e:Lfc/c;

    sget-object v3, Lfc/c;->g:Lfc/c;

    if-eq v2, v3, :cond_5

    invoke-static {v2}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v2}, Lfc/a;->e()Lfc/c;

    move-result-object v0

    iput-object v0, p0, Lfc/d;->e:Lfc/c;

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lfc/d;->e:Lfc/c;

    :goto_2
    iget v0, p0, Lfc/d;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/d;->b:I

    :cond_6
    iget v0, p1, Lfc/e;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lfc/e;->f:Lfc/c;

    iget v2, p0, Lfc/d;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lfc/d;->f:Lfc/c;

    sget-object v3, Lfc/c;->g:Lfc/c;

    if-eq v2, v3, :cond_7

    invoke-static {v2}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v2}, Lfc/a;->e()Lfc/c;

    move-result-object v0

    iput-object v0, p0, Lfc/d;->f:Lfc/c;

    goto :goto_3

    :cond_7
    iput-object v0, p0, Lfc/d;->f:Lfc/c;

    :goto_3
    iget v0, p0, Lfc/d;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/d;->b:I

    :cond_8
    iget v0, p1, Lfc/e;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lfc/e;->g:Lfc/c;

    iget v2, p0, Lfc/d;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lfc/d;->g:Lfc/c;

    sget-object v3, Lfc/c;->g:Lfc/c;

    if-eq v2, v3, :cond_9

    invoke-static {v2}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v2}, Lfc/a;->e()Lfc/c;

    move-result-object v0

    iput-object v0, p0, Lfc/d;->g:Lfc/c;

    goto :goto_4

    :cond_9
    iput-object v0, p0, Lfc/d;->g:Lfc/c;

    :goto_4
    iget v0, p0, Lfc/d;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/d;->b:I

    :cond_a
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lfc/e;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
