.class public final LP2/h;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LJ2/l0;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LJ2/U;

.field public final synthetic e:Lkb/i;


# direct methods
.method public constructor <init>(LJ2/U;Lib/c;Lsb/k;)V
    .locals 0

    iput-object p1, p0, LP2/h;->d:LJ2/U;

    check-cast p3, Lkb/i;

    iput-object p3, p0, LP2/h;->e:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LP2/h;

    iget-object v1, p0, LP2/h;->e:Lkb/i;

    iget-object p0, p0, LP2/h;->d:LJ2/U;

    invoke-direct {v0, p0, p2, v1}, LP2/h;-><init>(LJ2/U;Lib/c;Lsb/k;)V

    iput-object p1, v0, LP2/h;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJ2/m0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LP2/h;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LP2/h;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LP2/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LP2/h;->b:I

    iget-object v2, p0, LP2/h;->e:Lkb/i;

    iget-object v3, p0, LP2/h;->d:LJ2/U;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    const/4 p0, 0x5

    if-ne v1, p0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, LP2/h;->c:Ljava/lang/Object;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, LP2/h;->c:Ljava/lang/Object;

    check-cast v1, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, LP2/h;->a:LJ2/l0;

    iget-object v6, p0, LP2/h;->c:Ljava/lang/Object;

    check-cast v6, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, LP2/h;->a:LJ2/l0;

    iget-object v7, p0, LP2/h;->c:Ljava/lang/Object;

    check-cast v7, LJ2/m0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LP2/h;->c:Ljava/lang/Object;

    check-cast p1, LJ2/m0;

    sget-object v1, LJ2/l0;->IMMEDIATE:LJ2/l0;

    iput-object p1, p0, LP2/h;->c:Ljava/lang/Object;

    iput-object v1, p0, LP2/h;->a:LJ2/l0;

    iput v7, p0, LP2/h;->b:I

    invoke-interface {p1, p0}, LJ2/m0;->b(Lkb/i;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_6

    return-object v0

    :cond_6
    move-object v8, v7

    move-object v7, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v3}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p1

    iput-object v7, p0, LP2/h;->c:Ljava/lang/Object;

    iput-object v1, p0, LP2/h;->a:LJ2/l0;

    iput v6, p0, LP2/h;->b:I

    invoke-virtual {p1, p0}, LJ2/s;->c(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v6, v7

    :goto_1
    move-object p1, v1

    move-object v1, v6

    goto :goto_2

    :cond_8
    move-object p1, v1

    move-object v1, v7

    :goto_2
    new-instance v6, LP2/g;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2}, LP2/g;-><init>(Lib/c;Lsb/k;)V

    iput-object v1, p0, LP2/h;->c:Ljava/lang/Object;

    iput-object v7, p0, LP2/h;->a:LJ2/l0;

    iput v5, p0, LP2/h;->b:I

    invoke-interface {v1, p1, v6, p0}, LJ2/m0;->d(LJ2/l0;Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    iput-object p1, p0, LP2/h;->c:Ljava/lang/Object;

    iput v4, p0, LP2/h;->b:I

    invoke-interface {v1, p0}, LJ2/m0;->b(Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v3}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p1

    iget-object v0, p1, LJ2/s;->g:LJ2/m;

    iget-object v1, p1, LJ2/s;->c:LJ2/C0;

    iget-object p1, p1, LJ2/s;->f:LJ2/m;

    invoke-virtual {v1, p1, v0}, LJ2/C0;->e(LJ2/m;LJ2/m;)V

    :cond_b
    move-object p1, p0

    :goto_5
    return-object p1
.end method
