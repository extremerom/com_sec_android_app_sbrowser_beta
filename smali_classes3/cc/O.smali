.class public final Lcc/O;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public b:I

.field public c:Lcc/P;

.field public d:Lcc/T;

.field public e:I


# direct methods
.method public static e()Lcc/O;
    .locals 2

    new-instance v0, Lcc/O;

    invoke-direct {v0}, Lic/k;-><init>()V

    sget-object v1, Lcc/P;->INV:Lcc/P;

    iput-object v1, v0, Lcc/O;->c:Lcc/P;

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/O;->d:Lcc/T;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/O;->d()Lcc/Q;

    move-result-object p0

    invoke-virtual {p0}, Lcc/Q;->isInitialized()Z

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
    sget-object v1, Lcc/Q;->i:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/Q;

    invoke-direct {v1, p1, p2}, Lcc/Q;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/O;->f(Lcc/Q;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/Q;
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

    invoke-virtual {p0, v0}, Lcc/O;->f(Lcc/Q;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/Q;

    invoke-virtual {p0, p1}, Lcc/O;->f(Lcc/Q;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/O;->e()Lcc/O;

    move-result-object v0

    invoke-virtual {p0}, Lcc/O;->d()Lcc/Q;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/O;->f(Lcc/Q;)V

    return-object v0
.end method

.method public final d()Lcc/Q;
    .locals 5

    new-instance v0, Lcc/Q;

    invoke-direct {v0, p0}, Lcc/Q;-><init>(Lcc/O;)V

    iget v1, p0, Lcc/O;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcc/O;->c:Lcc/P;

    iput-object v2, v0, Lcc/Q;->c:Lcc/P;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcc/O;->d:Lcc/T;

    iput-object v2, v0, Lcc/Q;->d:Lcc/T;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget p0, p0, Lcc/O;->e:I

    iput p0, v0, Lcc/Q;->e:I

    iput v3, v0, Lcc/Q;->b:I

    return-object v0
.end method

.method public final f(Lcc/Q;)V
    .locals 4

    sget-object v0, Lcc/Q;->h:Lcc/Q;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/Q;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcc/Q;->c:Lcc/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcc/O;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/O;->b:I

    iput-object v0, p0, Lcc/O;->c:Lcc/P;

    :cond_1
    iget v0, p1, Lcc/Q;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcc/Q;->d:Lcc/T;

    iget v2, p0, Lcc/O;->b:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcc/O;->d:Lcc/T;

    sget-object v3, Lcc/T;->t:Lcc/T;

    if-eq v2, v3, :cond_2

    invoke-static {v2}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v2}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/O;->d:Lcc/T;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcc/O;->d:Lcc/T;

    :goto_0
    iget v0, p0, Lcc/O;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/O;->b:I

    :cond_3
    iget v0, p1, Lcc/Q;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcc/Q;->e:I

    iget v2, p0, Lcc/O;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/O;->b:I

    iput v0, p0, Lcc/O;->e:I

    :cond_4
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/Q;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
