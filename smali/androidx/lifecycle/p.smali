.class public final Landroidx/lifecycle/p;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/lifecycle/D;

.field public final synthetic d:Landroidx/lifecycle/C;

.field public final synthetic e:LQc/i0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;LQc/i0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/p;->c:Landroidx/lifecycle/D;

    iput-object p2, p0, Landroidx/lifecycle/p;->d:Landroidx/lifecycle/C;

    iput-object p3, p0, Landroidx/lifecycle/p;->e:LQc/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Landroidx/lifecycle/p;

    iget-object v1, p0, Landroidx/lifecycle/p;->e:LQc/i0;

    iget-object v2, p0, Landroidx/lifecycle/p;->c:Landroidx/lifecycle/D;

    iget-object p0, p0, Landroidx/lifecycle/p;->d:Landroidx/lifecycle/C;

    invoke-direct {v0, v2, p0, v1, p2}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;LQc/i0;Lib/c;)V

    iput-object p1, v0, Landroidx/lifecycle/p;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LPc/y;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/p;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/p;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/p;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/p;->b:Ljava/lang/Object;

    check-cast p0, LPc/y;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/p;->b:Ljava/lang/Object;

    check-cast p1, LPc/y;

    new-instance v1, Landroidx/lifecycle/o;

    iget-object v4, p0, Landroidx/lifecycle/p;->e:LQc/i0;

    invoke-direct {v1, v4, p1, v2}, Landroidx/lifecycle/o;-><init>(LQc/i0;LPc/y;Lib/c;)V

    iput-object p1, p0, Landroidx/lifecycle/p;->b:Ljava/lang/Object;

    iput v3, p0, Landroidx/lifecycle/p;->a:I

    iget-object v3, p0, Landroidx/lifecycle/p;->c:Landroidx/lifecycle/D;

    iget-object v4, p0, Landroidx/lifecycle/p;->d:Landroidx/lifecycle/C;

    invoke-static {v3, v4, v1, p0}, Landroidx/lifecycle/l0;->m(Landroidx/lifecycle/D;Landroidx/lifecycle/C;Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    :goto_0
    check-cast p0, LPc/x;

    const/4 p1, 0x0

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-virtual {p0, p1, v2}, LPc/i;->h(ZLjava/lang/Throwable;)Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
