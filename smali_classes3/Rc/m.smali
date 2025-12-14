.class public final LRc/m;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LRc/n;

.field public final synthetic d:LQc/i;


# direct methods
.method public constructor <init>(LRc/n;LQc/i;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/m;->c:LRc/n;

    iput-object p2, p0, LRc/m;->d:LQc/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LRc/m;

    iget-object v1, p0, LRc/m;->c:LRc/n;

    iget-object p0, p0, LRc/m;->d:LQc/i;

    invoke-direct {v0, v1, p0, p2}, LRc/m;-><init>(LRc/n;LQc/i;Lib/c;)V

    iput-object p1, v0, LRc/m;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/m;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/m;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LRc/m;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LRc/m;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, Ltb/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v3, p0, LRc/m;->c:LRc/n;

    iget-object v4, v3, LRc/i;->d:LQc/h;

    new-instance v5, LJ2/q0;

    iget-object v6, p0, LRc/m;->d:LQc/i;

    invoke-direct {v5, v1, p1, v3, v6}, LJ2/q0;-><init>(Ltb/w;LNc/B;LRc/n;LQc/i;)V

    iput v2, p0, LRc/m;->a:I

    invoke-interface {v4, v5, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
