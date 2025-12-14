.class public final Landroidx/lifecycle/c;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/lifecycle/d;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/d;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/c;->c:Landroidx/lifecycle/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Landroidx/lifecycle/c;

    iget-object p0, p0, Landroidx/lifecycle/c;->c:Landroidx/lifecycle/d;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/c;-><init>(Landroidx/lifecycle/d;Lib/c;)V

    iput-object p1, v0, Landroidx/lifecycle/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/c;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/c;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/c;->a:I

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/lifecycle/c;->c:Landroidx/lifecycle/d;

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

    iget-object p1, p0, Landroidx/lifecycle/c;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, Landroidx/lifecycle/U;

    iget-object v4, v3, Landroidx/lifecycle/d;->a:Landroidx/lifecycle/j;

    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p1

    invoke-direct {v1, v4, p1}, Landroidx/lifecycle/U;-><init>(Landroidx/lifecycle/j;Lib/h;)V

    iget-object p1, v3, Landroidx/lifecycle/d;->b:Landroidx/lifecycle/u;

    iput v2, p0, Landroidx/lifecycle/c;->a:I

    invoke-virtual {p1, v1, p0}, Landroidx/lifecycle/u;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, v3, Landroidx/lifecycle/d;->e:LA4/a;

    invoke-virtual {p0}, LA4/a;->invoke()Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
