.class public final Lcc/q;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public b:I

.field public c:Lcc/r;

.field public d:Ljava/util/List;

.field public e:Lcc/y;

.field public f:Lcc/s;


# direct methods
.method public static e()Lcc/q;
    .locals 2

    new-instance v0, Lcc/q;

    invoke-direct {v0}, Lic/k;-><init>()V

    sget-object v1, Lcc/r;->RETURNS_CONSTANT:Lcc/r;

    iput-object v1, v0, Lcc/q;->c:Lcc/r;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/q;->d:Ljava/util/List;

    sget-object v1, Lcc/y;->l:Lcc/y;

    iput-object v1, v0, Lcc/q;->e:Lcc/y;

    sget-object v1, Lcc/s;->AT_MOST_ONCE:Lcc/s;

    iput-object v1, v0, Lcc/q;->f:Lcc/s;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/q;->d()Lcc/t;

    move-result-object p0

    invoke-virtual {p0}, Lcc/t;->isInitialized()Z

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
    sget-object v1, Lcc/t;->j:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/t;

    invoke-direct {v1, p1, p2}, Lcc/t;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/q;->f(Lcc/t;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/t;
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

    invoke-virtual {p0, v0}, Lcc/q;->f(Lcc/t;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/t;

    invoke-virtual {p0, p1}, Lcc/q;->f(Lcc/t;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/q;->e()Lcc/q;

    move-result-object v0

    invoke-virtual {p0}, Lcc/q;->d()Lcc/t;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/q;->f(Lcc/t;)V

    return-object v0
.end method

.method public final d()Lcc/t;
    .locals 5

    new-instance v0, Lcc/t;

    invoke-direct {v0, p0}, Lcc/t;-><init>(Lcc/q;)V

    iget v1, p0, Lcc/q;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcc/q;->c:Lcc/r;

    iput-object v2, v0, Lcc/t;->c:Lcc/r;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcc/q;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/q;->d:Ljava/util/List;

    iget v2, p0, Lcc/q;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcc/q;->b:I

    :cond_1
    iget-object v2, p0, Lcc/q;->d:Ljava/util/List;

    iput-object v2, v0, Lcc/t;->d:Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    :cond_2
    iget-object v2, p0, Lcc/q;->e:Lcc/y;

    iput-object v2, v0, Lcc/t;->e:Lcc/y;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    :cond_3
    iget-object p0, p0, Lcc/q;->f:Lcc/s;

    iput-object p0, v0, Lcc/t;->f:Lcc/s;

    iput v3, v0, Lcc/t;->b:I

    return-object v0
.end method

.method public final f(Lcc/t;)V
    .locals 4

    sget-object v0, Lcc/t;->i:Lcc/t;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/t;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcc/t;->c:Lcc/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcc/q;->b:I

    or-int/2addr v2, v1

    iput v2, p0, Lcc/q;->b:I

    iput-object v0, p0, Lcc/q;->c:Lcc/r;

    :cond_1
    iget-object v0, p1, Lcc/t;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcc/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcc/t;->d:Ljava/util/List;

    iput-object v0, p0, Lcc/q;->d:Ljava/util/List;

    iget v0, p0, Lcc/q;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcc/q;->b:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcc/q;->b:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcc/q;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/q;->d:Ljava/util/List;

    iget v0, p0, Lcc/q;->b:I

    or-int/2addr v0, v2

    iput v0, p0, Lcc/q;->b:I

    :cond_3
    iget-object v0, p0, Lcc/q;->d:Ljava/util/List;

    iget-object v3, p1, Lcc/t;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_0
    iget v0, p1, Lcc/t;->b:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcc/t;->e:Lcc/y;

    iget v2, p0, Lcc/q;->b:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_6

    iget-object v2, p0, Lcc/q;->e:Lcc/y;

    sget-object v3, Lcc/y;->l:Lcc/y;

    if-eq v2, v3, :cond_6

    invoke-static {}, Lcc/w;->e()Lcc/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcc/w;->f(Lcc/y;)V

    invoke-virtual {v3, v1}, Lcc/w;->f(Lcc/y;)V

    invoke-virtual {v3}, Lcc/w;->d()Lcc/y;

    move-result-object v1

    iput-object v1, p0, Lcc/q;->e:Lcc/y;

    goto :goto_2

    :cond_6
    iput-object v1, p0, Lcc/q;->e:Lcc/y;

    :goto_2
    iget v1, p0, Lcc/q;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lcc/q;->b:I

    :cond_7
    iget v1, p1, Lcc/t;->b:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_8

    iget-object v0, p1, Lcc/t;->f:Lcc/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcc/q;->b:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcc/q;->b:I

    iput-object v0, p0, Lcc/q;->f:Lcc/s;

    :cond_8
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/t;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
