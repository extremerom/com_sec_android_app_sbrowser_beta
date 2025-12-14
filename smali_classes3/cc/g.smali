.class public final Lcc/g;
.super Lic/k;
.source "SourceFile"

# interfaces
.implements Lic/x;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public d:Ljava/util/List;

.field public e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcc/g;->b:I

    invoke-direct {p0}, Lic/k;-><init>()V

    return-void
.end method

.method public static f()Lcc/g;
    .locals 2

    new-instance v0, Lcc/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcc/g;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/g;->d:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, Lcc/g;->e:I

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    iget v0, p0, Lcc/g;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcc/g;->e()Lcc/Z;

    move-result-object p0

    invoke-virtual {p0}, Lcc/Z;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcc/g;->d()Lcc/h;

    move-result-object p0

    invoke-virtual {p0}, Lcc/h;->isInitialized()Z

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

    iget v0, p0, Lcc/g;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcc/Z;->h:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/Z;

    invoke-direct {v1, p1, p2}, Lcc/Z;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/g;->h(Lcc/Z;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/Z;
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

    invoke-virtual {p0, v0}, Lcc/g;->h(Lcc/Z;)V

    :cond_0
    throw p1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcc/h;->h:Lcc/a;

    invoke-virtual {v1, p1, p2}, Lcc/a;->a(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/h;
    :try_end_3
    .catch Lic/t; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p0, p1}, Lcc/g;->g(Lcc/h;)V

    return-object p0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/h;
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

    invoke-virtual {p0, v0}, Lcc/g;->g(Lcc/h;)V

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

    iget v0, p0, Lcc/g;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcc/Z;

    invoke-virtual {p0, p1}, Lcc/g;->h(Lcc/Z;)V

    return-object p0

    :pswitch_0
    check-cast p1, Lcc/h;

    invoke-virtual {p0, p1}, Lcc/g;->g(Lcc/h;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcc/g;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcc/g;->f()Lcc/g;

    move-result-object v0

    invoke-virtual {p0}, Lcc/g;->e()Lcc/Z;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/g;->h(Lcc/Z;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcc/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcc/g;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/g;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcc/g;->d()Lcc/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/g;->g(Lcc/h;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Lcc/h;
    .locals 4

    new-instance v0, Lcc/h;

    invoke-direct {v0, p0}, Lcc/h;-><init>(Lcc/g;)V

    iget v1, p0, Lcc/g;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/g;->e:I

    iput v2, v0, Lcc/h;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcc/g;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/g;->d:Ljava/util/List;

    iget v1, p0, Lcc/g;->c:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcc/g;->c:I

    :cond_1
    iget-object p0, p0, Lcc/g;->d:Ljava/util/List;

    iput-object p0, v0, Lcc/h;->d:Ljava/util/List;

    iput v3, v0, Lcc/h;->b:I

    return-object v0
.end method

.method public e()Lcc/Z;
    .locals 4

    new-instance v0, Lcc/Z;

    invoke-direct {v0, p0}, Lcc/Z;-><init>(Lcc/g;)V

    iget v1, p0, Lcc/g;->c:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcc/g;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/g;->d:Ljava/util/List;

    iget v2, p0, Lcc/g;->c:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcc/g;->c:I

    :cond_0
    iget-object v2, p0, Lcc/g;->d:Ljava/util/List;

    iput-object v2, v0, Lcc/Z;->c:Ljava/util/List;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget p0, p0, Lcc/g;->e:I

    iput p0, v0, Lcc/Z;->d:I

    iput v3, v0, Lcc/Z;->b:I

    return-object v0
.end method

.method public g(Lcc/h;)V
    .locals 3

    sget-object v0, Lcc/h;->g:Lcc/h;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/h;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcc/h;->c:I

    iget v2, p0, Lcc/g;->c:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/g;->c:I

    iput v0, p0, Lcc/g;->e:I

    :cond_1
    iget-object v0, p1, Lcc/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcc/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcc/h;->d:Ljava/util/List;

    iput-object v0, p0, Lcc/g;->d:Ljava/util/List;

    iget v0, p0, Lcc/g;->c:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcc/g;->c:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcc/g;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/g;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/g;->d:Ljava/util/List;

    iget v0, p0, Lcc/g;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/g;->c:I

    :cond_3
    iget-object v0, p0, Lcc/g;->d:Ljava/util/List;

    iget-object v1, p1, Lcc/h;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_0
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/h;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method

.method public h(Lcc/Z;)V
    .locals 3

    sget-object v0, Lcc/Z;->g:Lcc/Z;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcc/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcc/Z;->c:Ljava/util/List;

    iput-object v0, p0, Lcc/g;->d:Ljava/util/List;

    iget v0, p0, Lcc/g;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcc/g;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcc/g;->c:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/g;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/g;->d:Ljava/util/List;

    iget v0, p0, Lcc/g;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/g;->c:I

    :cond_2
    iget-object v0, p0, Lcc/g;->d:Ljava/util/List;

    iget-object v2, p1, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    iget v0, p1, Lcc/Z;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcc/Z;->d:I

    iget v1, p0, Lcc/g;->c:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcc/g;->c:I

    iput v0, p0, Lcc/g;->e:I

    :cond_4
    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/Z;->a:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
