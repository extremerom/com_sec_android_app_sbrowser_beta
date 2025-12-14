.class public final Lv2/z0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lv2/C0;


# direct methods
.method public constructor <init>(Lv2/C0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/z0;->b:Lv2/C0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, Lv2/z0;

    iget-object p0, p0, Lv2/z0;->b:Lv2/C0;

    invoke-direct {p1, p0, p2}, Lv2/z0;-><init>(Lv2/C0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/z0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/z0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, p0, Lv2/z0;->a:I

    const/4 v3, 0x0

    iget-object v4, p0, Lv2/z0;->b:Lv2/C0;

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, v4, Lv2/C0;->f:LX4/i;

    sget-object v2, Lv2/P;->APPEND:Lv2/P;

    invoke-virtual {p1, v2}, LX4/i;->h(Lv2/P;)LQc/m0;

    move-result-object p1

    sget-object v2, Lv2/P;->PREPEND:Lv2/P;

    iget-object v5, v4, Lv2/C0;->f:LX4/i;

    invoke-virtual {v5, v2}, LX4/i;->h(Lv2/P;)LQc/m0;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [LQc/h;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object v2, v5, v0

    sget p1, LQc/J;->a:I

    invoke-static {v5}, Lfb/l;->c([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance v2, LQc/e;

    sget-object v5, Lib/i;->a:Lib/i;

    sget-object v6, LPc/a;->SUSPEND:LPc/a;

    const/4 v7, -0x2

    invoke-direct {v2, p1, v5, v7, v6}, LQc/e;-><init>(Ljava/lang/Iterable;Lib/h;ILPc/a;)V

    new-instance p1, Lv2/y0;

    invoke-direct {p1, v4, v3}, Lv2/y0;-><init>(Lv2/C0;Lib/c;)V

    iput v0, p0, Lv2/z0;->a:I

    invoke-static {v2, p1, p0}, LQc/n0;->p(LRc/D;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Lv2/C1;

    if-eqz p1, :cond_4

    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    const-string v0, "Paging"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Jump triggered on PagingSource "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lv2/C0;->b:Lv2/g1;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object p0, v4, Lv2/C0;->e:LJ2/T;

    invoke-virtual {p0}, LJ2/T;->invoke()Ljava/lang/Object;

    :cond_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
