.class public final LRc/u;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LQc/i;

.field public b:I

.field public final synthetic c:LPc/x;

.field public final synthetic d:LQc/i;

.field public final synthetic e:Lsb/o;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:LNc/m0;


# direct methods
.method public constructor <init>(LPc/x;LQc/i;Lsb/o;Ljava/lang/Object;LNc/m0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/u;->c:LPc/x;

    iput-object p2, p0, LRc/u;->d:LQc/i;

    iput-object p3, p0, LRc/u;->e:Lsb/o;

    iput-object p4, p0, LRc/u;->f:Ljava/lang/Object;

    iput-object p5, p0, LRc/u;->g:LNc/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance p1, LRc/u;

    iget-object v5, p0, LRc/u;->g:LNc/m0;

    iget-object v1, p0, LRc/u;->c:LPc/x;

    iget-object v2, p0, LRc/u;->d:LQc/i;

    iget-object v3, p0, LRc/u;->e:Lsb/o;

    iget-object v4, p0, LRc/u;->f:Ljava/lang/Object;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, LRc/u;-><init>(LPc/x;LQc/i;Lsb/o;Ljava/lang/Object;LNc/m0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldb/r;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/u;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/u;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LRc/u;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, LRc/u;->a:LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, LPc/p;

    iget-object p1, p1, LPc/p;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput v5, p0, LRc/u;->b:I

    iget-object p1, p0, LRc/u;->c:LPc/x;

    invoke-virtual {p1, p0}, LPc/x;->l(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    instance-of v1, p1, LPc/o;

    if-eqz v1, :cond_6

    invoke-static {p1}, LPc/p;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, LRc/a;

    iget-object p0, p0, LRc/u;->g:LNc/m0;

    invoke-direct {p1, p0}, LRc/a;-><init>(Ljava/lang/Object;)V

    :cond_5
    throw p1

    :cond_6
    sget-object v1, LRc/c;->b:LQ6/i;

    if-ne p1, v1, :cond_7

    move-object p1, v2

    :cond_7
    iget-object v1, p0, LRc/u;->d:LQc/i;

    iput-object v1, p0, LRc/u;->a:LQc/i;

    iput v4, p0, LRc/u;->b:I

    iget-object v4, p0, LRc/u;->e:Lsb/o;

    iget-object v5, p0, LRc/u;->f:Ljava/lang/Object;

    invoke-interface {v4, v5, p1, p0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    iput-object v2, p0, LRc/u;->a:LQc/i;

    iput v3, p0, LRc/u;->b:I

    invoke-interface {v1, p1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    :cond_9
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
