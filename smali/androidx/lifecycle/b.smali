.class public final Landroidx/lifecycle/b;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/lifecycle/d;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/d;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/b;->b:Landroidx/lifecycle/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, Landroidx/lifecycle/b;

    iget-object p0, p0, Landroidx/lifecycle/b;->b:Landroidx/lifecycle/d;

    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/b;-><init>(Landroidx/lifecycle/d;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/b;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/b;->a:I

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/lifecycle/b;->b:Landroidx/lifecycle/d;

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

    iget-wide v4, v3, Landroidx/lifecycle/d;->c:J

    iput v2, p0, Landroidx/lifecycle/b;->a:I

    invoke-static {v4, v5, p0}, LNc/E;->k(JLkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, v3, Landroidx/lifecycle/d;->a:Landroidx/lifecycle/j;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->hasActiveObservers()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v3, Landroidx/lifecycle/d;->f:LNc/C0;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object p1, v3, Landroidx/lifecycle/d;->f:LNc/C0;

    :cond_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
