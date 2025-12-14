.class public final LL2/y;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LNc/q;

.field public final synthetic d:Lkb/i;


# direct methods
.method public constructor <init>(LNc/q;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, LL2/y;->c:LNc/q;

    check-cast p2, Lkb/i;

    iput-object p2, p0, LL2/y;->d:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LL2/y;

    iget-object v1, p0, LL2/y;->c:LNc/q;

    iget-object p0, p0, LL2/y;->d:Lkb/i;

    invoke-direct {v0, v1, p0, p2}, LL2/y;-><init>(LNc/q;Lsb/n;Lib/c;)V

    iput-object p1, v0, LL2/y;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LL2/y;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LL2/y;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LL2/y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LL2/y;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, LL2/y;->b:Ljava/lang/Object;

    check-cast p0, LNc/p;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LL2/y;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v1, p0, LL2/y;->c:LNc/q;

    iget-object v3, p0, LL2/y;->d:Lkb/i;

    :try_start_1
    iput-object v1, p0, LL2/y;->b:Ljava/lang/Object;

    iput v2, p0, LL2/y;->a:I

    invoke-interface {v3, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_0
    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast p0, LNc/q;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, LNc/t0;->V(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LNc/s;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    invoke-virtual {p0, p1}, LNc/t0;->V(Ljava/lang/Object;)Z

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
