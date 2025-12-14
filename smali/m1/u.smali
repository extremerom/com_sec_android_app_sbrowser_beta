.class public final Lm1/u;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lm1/G;


# direct methods
.method public constructor <init>(Lm1/G;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lm1/u;->c:Lm1/G;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lm1/u;

    iget-object p0, p0, Lm1/u;->c:Lm1/G;

    invoke-direct {v0, p0, p2}, Lm1/u;-><init>(Lm1/G;Lib/c;)V

    iput-object p1, v0, Lm1/u;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lm1/u;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lm1/u;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lm1/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lm1/u;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lm1/u;->b:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iget-object v1, p0, Lm1/u;->c:Lm1/G;

    iget-object v4, v1, Lm1/G;->g:LQc/A0;

    invoke-virtual {v4}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm1/H;

    instance-of v5, v4, Lm1/c;

    if-nez v5, :cond_2

    new-instance v5, Lm1/m;

    invoke-direct {v5, v4}, Lm1/m;-><init>(Lm1/H;)V

    iget-object v6, v1, Lm1/G;->i:Lo3/i;

    invoke-virtual {v6, v5}, Lo3/i;->h(Lm1/o;)V

    :cond_2
    new-instance v5, Lm1/s;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lm1/s;-><init>(Lm1/H;Lib/c;)V

    iput v3, p0, Lm1/u;->a:I

    instance-of v3, p1, LQc/G0;

    if-nez v3, :cond_7

    new-instance v3, LQc/X;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, LQc/X;-><init>(LQc/i;I)V

    new-instance p1, Ltb/s;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v4, LL2/k;

    invoke-direct {v4, p1, v3, v5}, LL2/k;-><init>(Ltb/s;LQc/i;Lsb/n;)V

    iget-object p1, v1, Lm1/G;->g:LQc/A0;

    invoke-virtual {p1, v4, p0}, LQc/A0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, v2

    :goto_2
    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    return-object v2

    :cond_7
    check-cast p1, LQc/G0;

    iget-object p0, p1, LQc/G0;->a:Ljava/lang/Throwable;

    throw p0
.end method
