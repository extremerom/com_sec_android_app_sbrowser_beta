.class public final Lv2/o1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LPc/b;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LQc/i;

.field public final synthetic e:Lkb/i;


# direct methods
.method public constructor <init>(LQc/i;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/o1;->d:LQc/i;

    check-cast p2, Lkb/i;

    iput-object p2, p0, Lv2/o1;->e:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lv2/o1;

    iget-object v1, p0, Lv2/o1;->e:Lkb/i;

    iget-object p0, p0, Lv2/o1;->d:LQc/i;

    invoke-direct {v0, p0, v1, p2}, Lv2/o1;-><init>(LQc/i;Lsb/n;Lib/c;)V

    iput-object p1, v0, Lv2/o1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/o1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/o1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/o1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/o1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lv2/o1;->a:LPc/b;

    iget-object v5, p0, Lv2/o1;->c:Ljava/lang/Object;

    check-cast v5, LNc/j0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v5

    move-object v5, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, p0, Lv2/o1;->a:LPc/b;

    iget-object v5, p0, Lv2/o1;->c:Ljava/lang/Object;

    check-cast v5, LNc/j0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/o1;->c:Ljava/lang/Object;

    check-cast p1, LNc/B;

    const/4 v1, 0x0

    const/4 v5, 0x6

    invoke-static {v1, v5, v2}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v1

    new-instance v5, Lv2/n1;

    iget-object v6, p0, Lv2/o1;->e:Lkb/i;

    invoke-direct {v5, v1, v6, v2}, Lv2/n1;-><init>(LPc/i;Lsb/n;Lib/c;)V

    const/4 v6, 0x3

    invoke-static {p1, v2, v2, v5, v6}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p1

    new-instance v5, LPc/b;

    invoke-direct {v5, v1}, LPc/b;-><init>(LPc/i;)V

    :goto_0
    iput-object p1, p0, Lv2/o1;->c:Ljava/lang/Object;

    iput-object v5, p0, Lv2/o1;->a:LPc/b;

    iput v4, p0, Lv2/o1;->b:I

    invoke-virtual {v5, p0}, LPc/b;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v7, v5

    move-object v5, p1

    move-object p1, v1

    move-object v1, v7

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, LPc/b;->c()Ljava/lang/Object;

    move-result-object p1

    iput-object v5, p0, Lv2/o1;->c:Ljava/lang/Object;

    iput-object v1, p0, Lv2/o1;->a:LPc/b;

    iput v3, p0, Lv2/o1;->b:I

    iget-object v6, p0, Lv2/o1;->d:LQc/i;

    invoke-interface {v6, p1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_5
    invoke-interface {v5, v2}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
