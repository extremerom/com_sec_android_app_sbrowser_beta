.class public final LP2/b;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LJ2/l0;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:LJ2/U;

.field public final synthetic g:Lsb/k;


# direct methods
.method public constructor <init>(LJ2/U;Lib/c;Lsb/k;ZZ)V
    .locals 0

    iput-boolean p4, p0, LP2/b;->d:Z

    iput-boolean p5, p0, LP2/b;->e:Z

    iput-object p1, p0, LP2/b;->f:LJ2/U;

    iput-object p3, p0, LP2/b;->g:Lsb/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LP2/b;

    iget-object v3, p0, LP2/b;->g:Lsb/k;

    iget-boolean v4, p0, LP2/b;->d:Z

    iget-boolean v5, p0, LP2/b;->e:Z

    iget-object v1, p0, LP2/b;->f:LJ2/U;

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LP2/b;-><init>(LJ2/U;Lib/c;Lsb/k;ZZ)V

    iput-object p1, v6, LP2/b;->c:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJ2/m0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LP2/b;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LP2/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LP2/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LP2/b;->b:I

    iget-object v2, p0, LP2/b;->g:Lsb/k;

    iget-object v3, p0, LP2/b;->f:LJ2/U;

    iget-boolean v4, p0, LP2/b;->e:Z

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    iget-object p0, p0, LP2/b;->c:Ljava/lang/Object;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LP2/b;->c:Ljava/lang/Object;

    check-cast v1, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, LP2/b;->a:LJ2/l0;

    iget-object v7, p0, LP2/b;->c:Ljava/lang/Object;

    check-cast v7, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, LP2/b;->a:LJ2/l0;

    iget-object v8, p0, LP2/b;->c:Ljava/lang/Object;

    check-cast v8, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LP2/b;->c:Ljava/lang/Object;

    check-cast p1, LJ2/m0;

    iget-boolean v1, p0, LP2/b;->d:Z

    if-eqz v1, :cond_d

    if-eqz v4, :cond_5

    sget-object v1, LJ2/l0;->DEFERRED:LJ2/l0;

    goto :goto_0

    :cond_5
    sget-object v1, LJ2/l0;->IMMEDIATE:LJ2/l0;

    :goto_0
    if-nez v4, :cond_9

    iput-object p1, p0, LP2/b;->c:Ljava/lang/Object;

    iput-object v1, p0, LP2/b;->a:LJ2/l0;

    iput v8, p0, LP2/b;->b:I

    invoke-interface {p1, p0}, LJ2/m0;->b(Lkb/i;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_6

    return-object v0

    :cond_6
    move-object v9, v8

    move-object v8, p1

    move-object p1, v9

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v3}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p1

    iput-object v8, p0, LP2/b;->c:Ljava/lang/Object;

    iput-object v1, p0, LP2/b;->a:LJ2/l0;

    iput v7, p0, LP2/b;->b:I

    invoke-virtual {p1, p0}, LJ2/s;->c(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v7, v8

    :goto_2
    move-object p1, v1

    move-object v1, v7

    goto :goto_3

    :cond_8
    move-object p1, v1

    move-object v1, v8

    goto :goto_3

    :cond_9
    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    :goto_3
    new-instance v7, LP2/a;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2}, LP2/a;-><init>(Lib/c;Lsb/k;)V

    iput-object v1, p0, LP2/b;->c:Ljava/lang/Object;

    iput-object v8, p0, LP2/b;->a:LJ2/l0;

    iput v6, p0, LP2/b;->b:I

    invoke-interface {v1, p1, v7, p0}, LJ2/m0;->d(LJ2/l0;Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    if-nez v4, :cond_e

    iput-object p1, p0, LP2/b;->c:Ljava/lang/Object;

    iput v5, p0, LP2/b;->b:I

    invoke-interface {v1, p0}, LJ2/m0;->b(Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    return-object v0

    :cond_b
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v3}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p1

    iget-object v0, p1, LJ2/s;->g:LJ2/m;

    iget-object v1, p1, LJ2/s;->c:LJ2/C0;

    iget-object p1, p1, LJ2/s;->f:LJ2/m;

    invoke-virtual {v1, p1, v0}, LJ2/C0;->e(LJ2/m;LJ2/m;)V

    :cond_c
    move-object p1, p0

    goto :goto_6

    :cond_d
    const-string p0, "null cannot be cast to non-null type androidx.room.coroutines.RawConnectionAccessor"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LL2/x;

    invoke-interface {p1}, LL2/x;->c()LS2/a;

    move-result-object p0

    invoke-interface {v2, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_e
    :goto_6
    return-object p1
.end method
