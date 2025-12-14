.class public final Lcc/b;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcc/b;->b:I

    invoke-direct {p0}, Lic/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    iget v0, p0, Lcc/b;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcc/b;->e()Lcc/l;

    move-result-object p0

    invoke-virtual {p0}, Lcc/l;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcc/b;->d()Lcc/f;

    move-result-object p0

    invoke-virtual {p0}, Lcc/f;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;
    .locals 2

    iget v0, p0, Lcc/b;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    :try_start_0
    sget-object v0, Lcc/l;->h:Lcc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcc/l;

    invoke-direct {v0, p1}, Lcc/l;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcc/b;->g(Lcc/l;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p1, Lic/t;->a:Lic/b;

    check-cast v0, Lcc/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcc/b;->g(Lcc/l;)V

    :cond_0
    throw p1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcc/f;->h:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/f;

    invoke-direct {v1, p1, p2}, Lcc/f;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_3
    .catch Lic/t; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, v1}, Lcc/b;->f(Lcc/f;)V

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/f;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcc/b;->f(Lcc/f;)V

    :cond_1
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 1

    iget v0, p0, Lcc/b;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcc/l;

    invoke-virtual {p0, p1}, Lcc/b;->g(Lcc/l;)V

    return-object p0

    :pswitch_0
    check-cast p1, Lcc/f;

    invoke-virtual {p0, p1}, Lcc/b;->f(Lcc/f;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcc/b;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcc/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcc/b;-><init>(I)V

    sget-object v1, Lic/e;->a:Lic/w;

    iput-object v1, v0, Lcc/b;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcc/b;->e()Lcc/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/b;->g(Lcc/l;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcc/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcc/b;-><init>(I)V

    sget-object v1, Lcc/e;->p:Lcc/e;

    iput-object v1, v0, Lcc/b;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcc/b;->d()Lcc/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/b;->f(Lcc/f;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lcc/f;
    .locals 4

    new-instance v0, Lcc/f;

    invoke-direct {v0, p0}, Lcc/f;-><init>(Lcc/b;)V

    iget v1, p0, Lcc/b;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/b;->d:I

    iput v2, v0, Lcc/f;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object p0, p0, Lcc/b;->e:Ljava/lang/Object;

    check-cast p0, Lcc/e;

    iput-object p0, v0, Lcc/f;->d:Lcc/e;

    iput v3, v0, Lcc/f;->b:I

    return-object v0
.end method

.method public e()Lcc/l;
    .locals 4

    new-instance v0, Lcc/l;

    invoke-direct {v0, p0}, Lcc/l;-><init>(Lcc/b;)V

    iget v1, p0, Lcc/b;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/b;->d:I

    iput v2, v0, Lcc/l;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object p0, p0, Lcc/b;->e:Ljava/lang/Object;

    check-cast p0, Lic/w;

    iput-object p0, v0, Lcc/l;->d:Lic/w;

    iput v3, v0, Lcc/l;->b:I

    return-object v0
.end method

.method public f(Lcc/f;)V
    .locals 4

    sget-object v0, Lcc/f;->g:Lcc/f;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/f;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/f;->c:I

    iget v3, p0, Lcc/b;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/b;->c:I

    iput v1, p0, Lcc/b;->d:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcc/f;->d:Lcc/e;

    iget v2, p0, Lcc/b;->c:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcc/b;->e:Ljava/lang/Object;

    check-cast v2, Lcc/e;

    sget-object v3, Lcc/e;->p:Lcc/e;

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcc/c;->e()Lcc/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcc/c;->f(Lcc/e;)V

    invoke-virtual {v3, v0}, Lcc/c;->f(Lcc/e;)V

    invoke-virtual {v3}, Lcc/c;->d()Lcc/e;

    move-result-object v0

    iput-object v0, p0, Lcc/b;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcc/b;->e:Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lcc/b;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/b;->c:I

    :cond_3
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/f;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method

.method public g(Lcc/l;)V
    .locals 4

    sget-object v0, Lcc/l;->g:Lcc/l;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/l;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/l;->c:I

    iget v3, p0, Lcc/b;->c:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/b;->c:I

    iput v1, p0, Lcc/b;->d:I

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcc/l;->d:Lic/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcc/b;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/b;->c:I

    iput-object v0, p0, Lcc/b;->e:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/l;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
