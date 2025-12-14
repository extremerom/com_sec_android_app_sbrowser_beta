.class public final Lrc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/o;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrc/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lrc/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxc/o;Lsb/a;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lrc/k;->b:I

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrc/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lrc/j;-><init>(ILsb/a;)V

    check-cast p1, Lxc/l;

    new-instance p2, Lxc/i;

    invoke-direct {p2, p1, v0}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p2, p0, Lrc/k;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 2

    iget v0, p0, Lrc/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lrc/k;->i(Lrc/f;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lrc/k;->i(Lrc/f;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LJb/l;

    instance-of v1, v1, LJb/b;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lrc/l;->e:Lrc/l;

    invoke-static {p1, p0}, Lkc/p;->o(Ljava/util/Collection;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p2, p0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0}, Lrc/o;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    return-object p0
.end method

.method public d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 1

    iget v0, p0, Lrc/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lrc/k;->j(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lrc/k;->j(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    sget-object p1, Lrc/l;->c:Lrc/l;

    invoke-static {p0, p1}, Lkc/p;->o(Ljava/util/Collection;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0}, Lrc/o;->e()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0}, Lrc/o;->f()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 1

    iget v0, p0, Lrc/k;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lrc/k;->k(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lrc/k;->k(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    sget-object p1, Lrc/l;->d:Lrc/l;

    invoke-static {p0, p1}, Lkc/p;->o(Ljava/util/Collection;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lrc/o;
    .locals 1

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object v0

    instance-of v0, v0, Lrc/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrc/k;

    invoke-virtual {p0}, Lrc/k;->h()Lrc/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final i(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lrc/q;->a(Lrc/f;Lsb/k;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrc/k;->l()Lrc/o;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final l()Lrc/o;
    .locals 1

    iget v0, p0, Lrc/k;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lrc/k;->c:Ljava/lang/Object;

    check-cast p0, Lrc/o;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lrc/k;->c:Ljava/lang/Object;

    check-cast p0, Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrc/o;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
