.class public final Landroidx/lifecycle/T;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/lifecycle/U;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/U;Ljava/lang/Object;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/U;

    iput-object p2, p0, Landroidx/lifecycle/T;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Landroidx/lifecycle/T;

    iget-object v0, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/U;

    iget-object p0, p0, Landroidx/lifecycle/T;->c:Ljava/lang/Object;

    invoke-direct {p1, v0, p0, p2}, Landroidx/lifecycle/T;-><init>(Landroidx/lifecycle/U;Ljava/lang/Object;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/T;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/T;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/T;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Landroidx/lifecycle/T;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/U;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, v3, Landroidx/lifecycle/U;->a:Landroidx/lifecycle/j;

    iput v4, p0, Landroidx/lifecycle/T;->a:I

    invoke-virtual {p1, p0}, Landroidx/lifecycle/j;->b(Lkb/c;)V

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, v3, Landroidx/lifecycle/U;->a:Landroidx/lifecycle/j;

    iget-object p0, p0, Landroidx/lifecycle/T;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-object v2
.end method
