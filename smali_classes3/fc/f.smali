.class public final Lfc/f;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public b:I

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;


# direct methods
.method public static e()Lfc/f;
    .locals 2

    new-instance v0, Lfc/f;

    invoke-direct {v0}, Lic/k;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lfc/f;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lfc/f;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lfc/f;->d()Lfc/j;

    move-result-object p0

    invoke-virtual {p0}, Lfc/j;->isInitialized()Z

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
    sget-object v1, Lfc/j;->h:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfc/j;

    invoke-direct {v1, p1, p2}, Lfc/j;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lfc/f;->f(Lfc/j;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lfc/j;
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

    invoke-virtual {p0, v0}, Lfc/f;->f(Lfc/j;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lfc/j;

    invoke-virtual {p0, p1}, Lfc/f;->f(Lfc/j;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lfc/f;->e()Lfc/f;

    move-result-object v0

    invoke-virtual {p0}, Lfc/f;->d()Lfc/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfc/f;->f(Lfc/j;)V

    return-object v0
.end method

.method public final d()Lfc/j;
    .locals 3

    new-instance v0, Lfc/j;

    invoke-direct {v0, p0}, Lfc/j;-><init>(Lfc/f;)V

    iget v1, p0, Lfc/f;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lfc/f;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lfc/f;->c:Ljava/util/List;

    iget v1, p0, Lfc/f;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lfc/f;->b:I

    :cond_0
    iget-object v1, p0, Lfc/f;->c:Ljava/util/List;

    iput-object v1, v0, Lfc/j;->b:Ljava/util/List;

    iget v1, p0, Lfc/f;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lfc/f;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lfc/f;->d:Ljava/util/List;

    iget v1, p0, Lfc/f;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lfc/f;->b:I

    :cond_1
    iget-object p0, p0, Lfc/f;->d:Ljava/util/List;

    iput-object p0, v0, Lfc/j;->c:Ljava/util/List;

    return-object v0
.end method

.method public final f(Lfc/j;)V
    .locals 3

    sget-object v0, Lfc/j;->g:Lfc/j;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lfc/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfc/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lfc/j;->b:Ljava/util/List;

    iput-object v0, p0, Lfc/f;->c:Ljava/util/List;

    iget v0, p0, Lfc/f;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lfc/f;->b:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lfc/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lfc/f;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lfc/f;->c:Ljava/util/List;

    iget v0, p0, Lfc/f;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/f;->b:I

    :cond_2
    iget-object v0, p0, Lfc/f;->c:Ljava/util/List;

    iget-object v1, p1, Lfc/j;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget-object v0, p1, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lfc/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lfc/j;->c:Ljava/util/List;

    iput-object v0, p0, Lfc/f;->d:Ljava/util/List;

    iget v0, p0, Lfc/f;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lfc/f;->b:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lfc/f;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lfc/f;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lfc/f;->d:Ljava/util/List;

    iget v0, p0, Lfc/f;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lfc/f;->b:I

    :cond_5
    iget-object v0, p0, Lfc/f;->d:Ljava/util/List;

    iget-object v1, p1, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_1
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lfc/j;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
