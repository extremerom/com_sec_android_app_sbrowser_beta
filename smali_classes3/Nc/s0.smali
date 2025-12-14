.class public final LNc/s0;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:LNc/x0;

.field public c:LUc/l;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:LNc/m0;


# direct methods
.method public constructor <init>(LNc/m0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LNc/s0;->f:LNc/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LNc/s0;

    iget-object p0, p0, LNc/s0;->f:LNc/m0;

    invoke-direct {v0, p0, p2}, LNc/s0;-><init>(LNc/m0;Lib/c;)V

    iput-object p1, v0, LNc/s0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJc/m;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LNc/s0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LNc/s0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LNc/s0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LNc/s0;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LNc/s0;->c:LUc/l;

    iget-object v3, p0, LNc/s0;->b:LNc/x0;

    iget-object v4, p0, LNc/s0;->e:Ljava/lang/Object;

    check-cast v4, LJc/m;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LNc/s0;->e:Ljava/lang/Object;

    check-cast p1, LJc/m;

    iget-object v1, p0, LNc/s0;->f:LNc/m0;

    invoke-virtual {v1}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, LNc/o;

    if-eqz v4, :cond_3

    check-cast v1, LNc/o;

    iget-object v1, v1, LNc/o;->e:LNc/t0;

    iput v3, p0, LNc/s0;->d:I

    invoke-virtual {p1, v1, p0}, LJc/m;->c(Ljava/lang/Object;Lkb/h;)Ljb/a;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_3
    instance-of v3, v1, LNc/d0;

    if-eqz v3, :cond_5

    check-cast v1, LNc/d0;

    invoke-interface {v1}, LNc/d0;->getList()LNc/x0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LUc/l;->g()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, LUc/l;

    move-object v4, p1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v1, LNc/o;

    if-eqz p1, :cond_4

    move-object p1, v1

    check-cast p1, LNc/o;

    iput-object v4, p0, LNc/s0;->e:Ljava/lang/Object;

    iput-object v3, p0, LNc/s0;->b:LNc/x0;

    iput-object v1, p0, LNc/s0;->c:LUc/l;

    iput v2, p0, LNc/s0;->d:I

    iget-object p1, p1, LNc/o;->e:LNc/t0;

    invoke-virtual {v4, p1, p0}, LJc/m;->c(Ljava/lang/Object;Lkb/h;)Ljb/a;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, LUc/l;->h()LUc/l;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
