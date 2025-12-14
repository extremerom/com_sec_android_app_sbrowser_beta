.class public final LRc/e;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LQc/i;

.field public final synthetic d:LRc/g;


# direct methods
.method public constructor <init>(LQc/i;LRc/g;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/e;->c:LQc/i;

    iput-object p2, p0, LRc/e;->d:LRc/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LRc/e;

    iget-object v1, p0, LRc/e;->c:LQc/i;

    iget-object p0, p0, LRc/e;->d:LRc/g;

    invoke-direct {v0, v1, p0, p2}, LRc/e;-><init>(LQc/i;LRc/g;Lib/c;)V

    iput-object p1, v0, LRc/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/e;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/e;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LRc/e;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LRc/e;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v1, p0, LRc/e;->d:LRc/g;

    invoke-virtual {v1, p1}, LRc/g;->h(LNc/B;)LPc/A;

    move-result-object p1

    iput v3, p0, LRc/e;->a:I

    iget-object v1, p0, LRc/e;->c:LQc/i;

    invoke-static {v1, p1, v3, p0}, LQc/n0;->m(LQc/i;LPc/A;ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method
