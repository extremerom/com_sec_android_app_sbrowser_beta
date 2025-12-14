.class public final LQc/o;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/w;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ltb/w;

.field public final synthetic e:LQc/i;


# direct methods
.method public constructor <init>(LQc/i;Lib/c;Ltb/w;)V
    .locals 0

    iput-object p3, p0, LQc/o;->d:Ltb/w;

    iput-object p1, p0, LQc/o;->e:LQc/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LQc/o;

    iget-object v1, p0, LQc/o;->d:Ltb/w;

    iget-object p0, p0, LQc/o;->e:LQc/i;

    invoke-direct {v0, p0, p2, v1}, LQc/o;-><init>(LQc/i;Lib/c;Ltb/w;)V

    iput-object p1, v0, LQc/o;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LPc/p;

    iget-object p1, p1, LPc/p;->a:Ljava/lang/Object;

    check-cast p2, Lib/c;

    new-instance v0, LPc/p;

    invoke-direct {v0, p1}, LPc/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, LQc/o;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQc/o;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQc/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/o;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, LQc/o;->a:Ltb/w;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LQc/o;->c:Ljava/lang/Object;

    check-cast p1, LPc/p;

    iget-object p1, p1, LPc/p;->a:Ljava/lang/Object;

    instance-of v1, p1, LPc/o;

    iget-object v3, p0, LQc/o;->d:Ltb/w;

    if-nez v1, :cond_2

    iput-object p1, v3, Ltb/w;->a:Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_7

    invoke-static {p1}, LPc/p;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v3, Ltb/w;->a:Ljava/lang/Object;

    if-eqz v1, :cond_5

    sget-object v4, LRc/c;->b:LQ6/i;

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    iput-object p1, p0, LQc/o;->c:Ljava/lang/Object;

    iput-object v3, p0, LQc/o;->a:Ltb/w;

    iput v2, p0, LQc/o;->b:I

    iget-object p1, p0, LQc/o;->e:LQc/i;

    invoke-interface {p1, v1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object p0, v3

    :goto_0
    move-object v3, p0

    :cond_5
    sget-object p0, LRc/c;->d:LQ6/i;

    iput-object p0, v3, Ltb/w;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    throw v1

    :cond_7
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
