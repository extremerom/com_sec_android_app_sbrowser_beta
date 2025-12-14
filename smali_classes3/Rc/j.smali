.class public final LRc/j;
.super LRc/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(LQc/h;Lib/h;ILPc/a;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    sget-object p2, Lib/i;->a:Lib/i;

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, LPc/a;->SUSPEND:LPc/a;

    :cond_2
    invoke-direct {p0, p3, p4, p1, p2}, LRc/i;-><init>(ILPc/a;LQc/h;Lib/h;)V

    return-void
.end method


# virtual methods
.method public final f(Lib/h;ILPc/a;)LRc/g;
    .locals 1

    new-instance v0, LRc/j;

    iget-object p0, p0, LRc/i;->d:LQc/h;

    invoke-direct {v0, p2, p3, p0, p1}, LRc/i;-><init>(ILPc/a;LQc/h;Lib/h;)V

    return-object v0
.end method

.method public final g()LQc/h;
    .locals 0

    iget-object p0, p0, LRc/i;->d:LQc/h;

    return-object p0
.end method

.method public final i(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LRc/i;->d:LQc/h;

    invoke-interface {p0, p1, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
