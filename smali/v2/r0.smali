.class public final Lv2/r0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lv2/C0;

.field public final synthetic c:LPc/i;


# direct methods
.method public constructor <init>(LPc/i;Lib/c;Lv2/C0;)V
    .locals 0

    iput-object p3, p0, Lv2/r0;->b:Lv2/C0;

    iput-object p1, p0, Lv2/r0;->c:LPc/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Lv2/r0;

    iget-object v0, p0, Lv2/r0;->c:LPc/i;

    iget-object p0, p0, Lv2/r0;->b:Lv2/C0;

    invoke-direct {p1, v0, p2, p0}, Lv2/r0;-><init>(LPc/i;Lib/c;Lv2/C0;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/r0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/r0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/r0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/r0;->a:I

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

    iget-object p1, p0, Lv2/r0;->b:Lv2/C0;

    iget-object p1, p1, Lv2/C0;->d:LQc/k;

    new-instance v1, LQc/K;

    iget-object v3, p0, Lv2/r0;->c:LPc/i;

    const/4 v4, 0x5

    invoke-direct {v1, v4, v3}, LQc/K;-><init>(ILjava/lang/Object;)V

    iput v2, p0, Lv2/r0;->a:I

    invoke-virtual {p1, v1, p0}, LQc/k;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
