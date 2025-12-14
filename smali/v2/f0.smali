.class public final Lv2/f0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lv2/h0;


# direct methods
.method public constructor <init>(Lv2/h0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/f0;->c:Lv2/h0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/f0;

    iget-object p0, p0, Lv2/f0;->c:Lv2/h0;

    invoke-direct {v0, p0, p2}, Lv2/f0;-><init>(Lv2/h0;Lib/c;)V

    iput-object p1, v0, Lv2/f0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv2/q1;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/f0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/f0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/f0;->a:I

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

    iget-object p1, p0, Lv2/f0;->b:Ljava/lang/Object;

    check-cast p1, Lv2/q1;

    iget-object v1, p0, Lv2/f0;->c:Lv2/h0;

    iget-object v3, v1, Lv2/h0;->d:Lo3/c;

    iget-object v3, v3, Lo3/c;->b:Ljava/lang/Object;

    check-cast v3, LQc/k;

    new-instance v4, Lv2/c0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkb/i;-><init>(ILib/c;)V

    new-instance v5, LQc/y;

    invoke-direct {v5, v4, v3}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    new-instance v3, LQc/I;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v6, v4}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance v4, Lv2/C;

    invoke-direct {v4, v5, v3, v6}, Lv2/C;-><init>(LQc/y;LQc/I;Lib/c;)V

    new-instance v3, LQc/k;

    invoke-direct {v3, v4}, LQc/k;-><init>(Lsb/n;)V

    new-instance v4, LQc/k;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, LQc/k;-><init>(ILjava/lang/Object;)V

    new-instance v3, LQc/I;

    const/4 v5, 0x4

    invoke-direct {v3, v6, v1, v5}, LQc/I;-><init>(Lib/c;Ljava/lang/Object;I)V

    new-instance v1, Lv2/E;

    invoke-direct {v1, v4, v3, v6}, Lv2/E;-><init>(LQc/h;Lsb/o;Lib/c;)V

    invoke-static {v1}, Lv2/F;->c(Lsb/n;)LQc/h;

    move-result-object v1

    new-instance v3, Lv2/e0;

    invoke-direct {v3, p1}, Lv2/e0;-><init>(Lv2/q1;)V

    iput v2, p0, Lv2/f0;->a:I

    invoke-interface {v1, v3, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
