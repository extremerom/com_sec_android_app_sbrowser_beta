.class public final LW/v;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lsb/a;

.field public final synthetic c:La0/a0;


# direct methods
.method public constructor <init>(Lsb/a;La0/a0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LW/v;->b:Lsb/a;

    iput-object p2, p0, LW/v;->c:La0/a0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, LW/v;

    iget-object v0, p0, LW/v;->b:Lsb/a;

    iget-object p0, p0, LW/v;->c:La0/a0;

    invoke-direct {p1, v0, p0, p2}, LW/v;-><init>(Lsb/a;La0/a0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LW/v;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LW/v;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LW/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LW/v;->a:I

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

    new-instance p1, LA4/a;

    iget-object v1, p0, LW/v;->b:Lsb/a;

    const/16 v3, 0xc

    invoke-direct {p1, v3, v1}, LA4/a;-><init>(ILjava/lang/Object;)V

    new-instance v1, La0/H0;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3}, La0/H0;-><init>(LA4/a;Lib/c;)V

    new-instance p1, LQc/k;

    invoke-direct {p1, v1}, LQc/k;-><init>(Lsb/n;)V

    new-instance v1, LQc/K;

    iget-object v3, p0, LW/v;->c:La0/a0;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, LQc/K;-><init>(ILjava/lang/Object;)V

    iput v2, p0, LW/v;->a:I

    invoke-virtual {p1, v1, p0}, LQc/k;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
