.class public final LP2/f;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public a:I

.field public final synthetic b:LJ2/U;

.field public final synthetic c:Lkb/i;


# direct methods
.method public constructor <init>(LJ2/U;Lib/c;Lsb/k;)V
    .locals 0

    iput-object p1, p0, LP2/f;->b:LJ2/U;

    check-cast p3, Lkb/i;

    iput-object p3, p0, LP2/f;->c:Lkb/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LP2/f;

    iget-object v1, p0, LP2/f;->c:Lkb/i;

    iget-object p0, p0, LP2/f;->b:LJ2/U;

    invoke-direct {v0, p0, p1, v1}, LP2/f;-><init>(LJ2/U;Lib/c;Lsb/k;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, LP2/f;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LP2/f;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LP2/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LP2/f;->a:I

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

    new-instance p1, LP2/e;

    iget-object v1, p0, LP2/f;->c:Lkb/i;

    iget-object v3, p0, LP2/f;->b:LJ2/U;

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4, v1}, LP2/e;-><init>(LJ2/U;Lib/c;Lsb/k;)V

    iput v2, p0, LP2/f;->a:I

    const/4 v1, 0x0

    invoke-virtual {v3, v1, p1, p0}, LJ2/U;->useConnection$room_runtime_release(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
