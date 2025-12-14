.class public final Lk3/g;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LP7/c;

.field public final synthetic c:Lo3/q;

.field public final synthetic d:Lk3/e;


# direct methods
.method public constructor <init>(LP7/c;Lo3/q;Lk3/e;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lk3/g;->b:LP7/c;

    iput-object p2, p0, Lk3/g;->c:Lo3/q;

    iput-object p3, p0, Lk3/g;->d:Lk3/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, Lk3/g;

    iget-object v0, p0, Lk3/g;->c:Lo3/q;

    iget-object v1, p0, Lk3/g;->d:Lk3/e;

    iget-object p0, p0, Lk3/g;->b:LP7/c;

    invoke-direct {p1, p0, v0, v1, p2}, Lk3/g;-><init>(LP7/c;Lo3/q;Lk3/e;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lk3/g;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lk3/g;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lk3/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lk3/g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lk3/g;->b:LP7/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lk3/g;->c:Lo3/q;

    iget-object p1, p1, LP7/c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ll3/d;

    invoke-virtual {v5, v1}, Ll3/d;->b(Lo3/q;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ll3/c;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Ll3/c;-><init>(Ll3/d;Lib/c;)V

    invoke-static {v5}, LQc/n0;->g(Lsb/n;)LQc/c;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [LQc/h;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LQc/h;

    new-instance v3, LQc/k;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p1}, LQc/k;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p1

    new-instance v3, LJ2/u;

    iget-object v4, p0, Lk3/g;->d:Lk3/e;

    const/4 v5, 0x5

    invoke-direct {v3, v5, v4, v1}, LJ2/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lk3/g;->a:I

    invoke-interface {p1, v3, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
