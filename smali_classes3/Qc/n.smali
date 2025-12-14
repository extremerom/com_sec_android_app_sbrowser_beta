.class public final LQc/n;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public a:I

.field public final synthetic b:LQc/i;

.field public final synthetic c:Ltb/w;


# direct methods
.method public constructor <init>(LQc/i;Lib/c;Ltb/w;)V
    .locals 0

    iput-object p1, p0, LQc/n;->b:LQc/i;

    iput-object p3, p0, LQc/n;->c:Ltb/w;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LQc/n;

    iget-object v1, p0, LQc/n;->b:LQc/i;

    iget-object p0, p0, LQc/n;->c:Ltb/w;

    invoke-direct {v0, v1, p1, p0}, LQc/n;-><init>(LQc/i;Lib/c;Ltb/w;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, LQc/n;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQc/n;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQc/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LQc/n;->a:I

    iget-object v2, p0, LQc/n;->c:Ltb/w;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p1, LRc/c;->b:LQ6/i;

    iget-object v1, v2, Ltb/w;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    move-object v1, v3

    :cond_2
    iput v4, p0, LQc/n;->a:I

    iget-object p1, p0, LQc/n;->b:LQc/i;

    invoke-interface {p1, v1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iput-object v3, v2, Ltb/w;->a:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
