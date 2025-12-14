.class public final Lv2/W0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public a:I

.field public final synthetic b:Lv2/e;

.field public final synthetic c:Lv2/M0;


# direct methods
.method public constructor <init>(Lv2/e;Lv2/M0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/W0;->b:Lv2/e;

    iput-object p2, p0, Lv2/W0;->c:Lv2/M0;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lv2/W0;

    iget-object v1, p0, Lv2/W0;->b:Lv2/e;

    iget-object p0, p0, Lv2/W0;->c:Lv2/M0;

    invoke-direct {v0, v1, p0, p1}, Lv2/W0;-><init>(Lv2/e;Lv2/M0;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lv2/W0;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/W0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/W0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/W0;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/W0;->c:Lv2/M0;

    iget-object v1, p1, Lv2/M0;->b:Lo3/e;

    iget-object v4, p0, Lv2/W0;->b:Lv2/e;

    iget-object v5, v4, Lv2/e;->c:Lv2/y1;

    iput-object v1, v4, Lv2/e;->c:Lv2/y1;

    instance-of v1, v5, Lv2/U0;

    if-eqz v1, :cond_2

    check-cast v5, Lv2/U0;

    :cond_2
    iget-object v1, p1, Lv2/M0;->a:LQc/h;

    new-instance v5, LJ2/u;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v4, p1}, LJ2/u;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v3, p0, Lv2/W0;->a:I

    invoke-interface {v1, v5, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object v2
.end method
