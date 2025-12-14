.class public final Landroidx/lifecycle/t;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Landroidx/lifecycle/q;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/lifecycle/S;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/S;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/t;->d:Landroidx/lifecycle/S;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Landroidx/lifecycle/t;

    iget-object p0, p0, Landroidx/lifecycle/t;->d:Landroidx/lifecycle/S;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/S;Lib/c;)V

    iput-object p1, v0, Landroidx/lifecycle/t;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LPc/y;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/t;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/t;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/t;->b:I

    iget-object v2, p0, Landroidx/lifecycle/t;->d:Landroidx/lifecycle/S;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/q;

    iget-object v4, p0, Landroidx/lifecycle/t;->c:Ljava/lang/Object;

    check-cast v4, LPc/y;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/t;->c:Ljava/lang/Object;

    check-cast p1, LPc/y;

    new-instance v1, Landroidx/lifecycle/q;

    const/4 v6, 0x0

    invoke-direct {v1, v6, p1}, Landroidx/lifecycle/q;-><init>(ILjava/lang/Object;)V

    sget-object v6, LNc/N;->a:LWc/f;

    sget-object v6, LUc/q;->a:LNc/w0;

    invoke-virtual {v6}, LNc/w0;->K()LNc/w0;

    move-result-object v6

    new-instance v7, Landroidx/lifecycle/r;

    invoke-direct {v7, v2, v1, v5}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/q;Lib/c;)V

    iput-object p1, p0, Landroidx/lifecycle/t;->c:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/q;

    iput v4, p0, Landroidx/lifecycle/t;->b:I

    invoke-static {v6, v7, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    move-object v4, p1

    :goto_0
    new-instance p1, LB0/E;

    const/4 v6, 0x3

    invoke-direct {p1, v6, v2, v1}, LB0/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, p0, Landroidx/lifecycle/t;->c:Ljava/lang/Object;

    iput-object v5, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/q;

    iput v3, p0, Landroidx/lifecycle/t;->b:I

    invoke-static {v4, p1, p0}, LG5/t;->b(LPc/y;Lsb/a;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
